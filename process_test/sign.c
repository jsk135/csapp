#include "csapp.h"

void sigint_handler(int sig) {
    printf("Caught SIGINT\n");
    return;
}

int main() {
    /* Install the SIGINT handler */
    if (signal(SIGINT, sigint_handler) == SIG_ERR)
        unix_error("signal error");

    pause(); /* Wait for the receipt of a signal */

     
    return 0;
}