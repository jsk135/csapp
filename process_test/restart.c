#include "csapp.h"

sigjmp_buf buf;

void handler(int sig) {
    return;
}

int main(){
    // if (!sigsetjmp(buf, 1)) {
    //     Signal(SIGINT, handler);
    //     Sio_puts("starting\n");
    // } else {
    //     Sio_puts("restarting\n");
    // }
    printf("%d\n",getpid());
    Signal(SIGINT, handler);
    while(1) {
        Sleep(1);
        Sio_puts("processing...\n");
        printf("line 20\n");
    }
    exit(0);
}