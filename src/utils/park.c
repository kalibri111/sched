#include "park.h"


void futex_wait(u_int32_t* futex_addr, size_t val) {
    while (1) {
        int64_t futex_rc = syscall(SYS_futex, futex_addr, FUTEX_WAIT, val, NULL, NULL, NULL);

        if (futex_rc == -1) {
            if (errno != EAGAIN) {
                perror("futex wait failure");
                exit(1);
            }
        } else if (futex_rc == 0) {
            if (*futex_addr == val) {
                return;
            }
        } else {
            abort();
        }
    }
}

void futex_wake(uint32_t* futex_addr) {
    while (1) {
        int64_t futex_rc = syscall(SYS_futex, futex_addr, FUTEX_WAKE, 1, NULL, NULL, NULL);
        if (futex_rc == -1) {
            perror("futex wake failures");
            exit(1);
        } else if (futex_rc > 0) {
            return;
        }
    }
}

void ParkWait(Park* self, size_t old) {
    futex_wait((uint32_t*)&self->epoch, old);
}

void ParkWake(Park* self) {
    atomic_fetch_add(&self->epoch, 1);
    futex_wake((uint32_t*)&self->epoch);
}

size_t ParkAnounce(Park* self) {
    return atomic_load(&self->epoch);
}