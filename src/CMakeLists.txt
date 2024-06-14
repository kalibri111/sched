enable_language(C)
file(GLOB SOURCES "stealing/*.c" "stealing/queues/*.c" "utils/*.c")
file(GLOB HEADERS "stealing" "stealing/queues" "utils")

add_library(sched STATIC ${SOURCES})
target_include_directories(sched PUBLIC ${HEADERS})