#include "csapp.h"
#define N 2

int main()
{
    int status, i;
    pid_t pid[N], retpid;

    /* Parent creates N children */
    for (i = 0; i < N; i++)
    if ((pid[i] = Fork()) == 0)  /* Child */
        exit(100+i);
    i = 0;
    /*parent reaps N children in no particular order*/
    while ((retpid = Waitpid(pid[i++], &status, 0)) > 0) {
        if (WIFEXITED(status))
            printf("child %d terminated normally with exit status=%d\n",retpid,WEXITSTATUS(status));
        else
            printf("child %d terminated abnormally\n",retpid);
    }

    /* The normal termination is if there are no more children */
    if (errno != ECHILD)
        unix_error("waitpid error");

    exit(0);
}