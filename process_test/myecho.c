#include "csapp.h"
int main(int argc, char **argv) {
    int i;
    printf("Command-line arguments:\n");
    for (i = 0; i < argc; i++) {
        printf("argv[%d]: %s\n", i, argv[i]);
    }
    
    printf("Environment variables:\n");
    char **p = environ;
    i = 0;
    while (*p) {
        printf("envp[%d]: %s\n",i++, *p);
        p++;
    }
    return 0;
}