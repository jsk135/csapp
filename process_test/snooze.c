#include "csapp.h"

void sigint_handler(int sig) {
    // printf("Caught SIGINT\n");
    return;
}

unsigned snooze(unsigned secs) {
    unsigned rc = sleep(secs);
    printf("Slept for %d of %d secs.\n", secs-rc, secs);
    return rc;
}

int main(){
    if (signal(SIGINT, sigint_handler) == SIG_ERR)
        unix_error("signal error");

    snooze(5);
    return 0;
}