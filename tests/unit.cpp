/*
 * Tests for global queue
 */
#include <execinfo.h>
#include <thread>

extern "C" {
#include "queues/global.h"
#include "queues/threadlocal.h"
#include "scheduler.h"
#include "task.h"
}

#include "random"

void backtraceHandler(int sig) {
    void *array[10];
    size_t size;

    // get void*'s for all entries on the stack
    size = backtrace(array, 15);

    // print out all the frames to stderr
    fprintf(stderr, "Error: signal %d:\n", sig);
    backtrace_symbols_fd(array, size, STDERR_FILENO);
    exit(1);
}

typedef struct TestIntrusiveItem {
    explicit TestIntrusiveItem(int value) : value(value) {};
    IntrusiveNode node;
    int value;
} TestIntrusiveItem;

/**
 * Single thread push - pop
 */
TEST(SchedTest, GlobalQueuePushPopTest) {
    auto globalQueue = GlobalQueueNew();

    for (int i = 0; i < 100; ++i) {
        auto t = new TestIntrusiveItem(i);
        GlobalQueuePushOne(globalQueue, reinterpret_cast<SchedulerTask *>(t));
    }

    for (int i = 0; i < 100; ++i) {
        auto t = (TestIntrusiveItem *) GlobalQueuePop(globalQueue);
        delete t;
    }

    ASSERT_EQ(globalQueue->tasks->size, 0);

    GlobalQueueDelete(globalQueue);
}

TEST(SchedTest, GlobalQueueFIFOTest) {
    auto globalQueue = GlobalQueueNew();

    for (int i = 0; i < 100; ++i) {
        auto t = new TestIntrusiveItem(i);
        GlobalQueuePushOne(globalQueue, reinterpret_cast<SchedulerTask *>(t));
    }

    for (int i = 0; i < 100; ++i) {
        auto t = (TestIntrusiveItem *) GlobalQueuePop(globalQueue);
        ASSERT_EQ(t->value, i);
        delete t;
    }

    ASSERT_EQ(globalQueue->tasks->size, 0);

    GlobalQueueDelete(globalQueue);
}

/**
 * Multi-producer single consumer test
 */
TEST(SchedTest, GlobalQueueMultithreadInsert) {
    for (int j = 0; j < 100; ++j) {
        auto globalQueue = GlobalQueueNew();

        std::vector<std::thread> workers;
        for (int i = 0; i < 100; ++i) {
            auto insert = [&](int local) {
                GlobalQueuePushOne(globalQueue, reinterpret_cast<SchedulerTask *>(new TestIntrusiveItem(local)));

//                fmt::print("pushed: {}\n", local);
            };
            auto t = std::thread{insert, i};
            workers.push_back(std::move(t));
        }

        ASSERT_EQ(workers.size(), 100);

        // wait for all
        for (auto &t: workers) {
            t.join();
        }

        ASSERT_EQ(globalQueue->tasks->size, 100);


        std::unordered_map<int, bool> arrived_in_queue;

        for (int i = 0; i < 100; ++i) {
            auto item = (TestIntrusiveItem *) GlobalQueuePop(globalQueue);

            if (item == nullptr) {
                EXPECT_TRUE(false) << "expected value";
            }

            arrived_in_queue[item->value] = true;
        }

        for (int i = 0; i < 100; ++i) {
            if (arrived_in_queue.find(i) == arrived_in_queue.end()) {
                std::string keys;
                for (auto &k: arrived_in_queue) {
                    keys += std::to_string(k.first) + " ";
                }
                EXPECT_TRUE(false) << "expected " << i << " arrived in queue, got:\n" << "\t" << keys;
            }

        }

        GlobalQueueDelete(globalQueue);
    }
}

/**
 * Multi-producer-multi-consumer test.
 * Producers sleeps randomly, consumers takes exactly fixed items
 */
TEST(SchedTest, GlobalQueueMultiPushMultiPop) {
    auto globalQueue = GlobalQueueNew();

    std::random_device rd;
    std::mt19937 mt(rd());
    std::uniform_real_distribution<double> dist(1.0, 10.0);
    std::atomic<size_t> producers_done = {0};

    std::vector<std::thread> producers;
    for (int i = 0; i < 100; ++i) {
        auto insert = [&](int local) {
            GlobalQueuePushOne(globalQueue, reinterpret_cast<SchedulerTask *>(new TestIntrusiveItem(local)));

            sleep(dist(mt));
            producers_done += 1;
//            fmt::print("put: {}\n", producers_done);
        };
        auto t = std::thread{insert, i};
        producers.push_back(std::move(t));
    }

    ASSERT_EQ(producers.size(), 100);


    std::unordered_map<int, bool> arrived_in_queue;
    std::vector<std::thread> consumers;
    std::mutex map_lock;
    std::atomic<size_t> removed_concurrently = {0};

    for (int i = 0; i < 3; ++i) {
        auto remove = [&]() {
            while (removed_concurrently < 100) {
//                fmt::print("get: {}\n", removed_concurrently);
                auto item = (TestIntrusiveItem *) GlobalQueuePop(globalQueue);
                if (item == nullptr)
                    continue;

                removed_concurrently += 1;

                map_lock.lock();
                arrived_in_queue[item->value] = true;
                map_lock.unlock();
            }
        };
        auto t = std::thread{remove};
        consumers.push_back(std::move(t));
    }

    // wait for all consumers done -> all producer done too
    for (auto &c: consumers) {
        c.join();
    }

    ASSERT_EQ(removed_concurrently, 100);

    for (int i = 0; i < 100; ++i) {
        if (arrived_in_queue.find(i) == arrived_in_queue.end()) {
            std::string keys;
            for (auto &k: arrived_in_queue) {
                keys += std::to_string(k.first) + " ";
            }
            EXPECT_TRUE(false) << "expected " << i << " arrived in queue, got:\n" << "\t" << keys;
        }

    }

    for (auto &p: producers) {
        p.join();
    }

    GlobalQueueDelete(globalQueue);
}

TEST(SchedTest, LocalQueuePushPop) {
    auto localQueue = ThreadLocalQueue();
    ThreadLocalQueueInit(&localQueue);

    for (int i = 0; i < 50; ++i) {
        auto t = new SchedulerTask();
        assert(t);
        ASSERT_TRUE(
                ThreadLocalQueueTryPush(&localQueue, t)
        );
    }

    ASSERT_EQ(ThreadLocalQueueSizeAtMost(&localQueue), 50);

    std::vector<int> vals;

    for (int i = 0; i < 50; ++i) {
        auto t = ThreadLocalQueueTryPop(&localQueue);
        if (!t) {
            continue;
            ASSERT_FALSE(true) << "unexpectedly empty local queue: " << i << " iteration, tail: " << localQueue.tail
                               << ", head: " << localQueue.head;
        }
        delete t;
    }

    ASSERT_EQ(ThreadLocalQueueIsEmpty(&localQueue), true);
}

TEST(SchedTest, ThreadPoolSimpleTest) {
    // Scheduler created
    initTestRunner();
    auto scheduler = SchedulerNew(4, testRunner);
    SchedulerStart(scheduler);
    // push tasks to global queue with Submit
    for (int i = 0; i < 50; ++i) {
        auto t = new SchedulerTask();
        SchedulerSubmit(scheduler, t);
    }
    SchedulerWaitIdle(scheduler);
    // check all done
    ASSERT_EQ(testResult(), 50);
}

TEST(SchedTest, ThreadPoolResubmitTest) {
    // Scheduler created
    // 100 workers created
    // push tasks to global queue with Submit
    // tasks call submit inside
    // check all resubmit done
}

TEST(SchedTest, ThreadPoolCoroTest) {
    // task runs via runner
    // coroutine defines own runner
    // coroutine tick counter and sleeps
    // check counters
}

int main(int argc, char **argv) {
    signal(SIGSEGV, backtraceHandler);
    signal(SIGABRT, backtraceHandler);
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}