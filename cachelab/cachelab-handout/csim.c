#include <fcntl.h>
#include <getopt.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "cachelab.h"
struct Line{
    int valid;
    unsigned flag; 
    int count;
};
typedef struct Line* Set;
typedef Set* Cache;

int verbose = 0, s, E, b, S, B;
int hits = 0, misses = 0, evictions = 0;
int time = 0;
unsigned addr=0;
char type;
FILE *tracefile;

void usage(void) { exit(1); }


void opt(int argc, char **argv)
{
    /* Parse the command line 这里c用int是为了保证兼容性，因为有的系统char是unsigned的*/
    for (int c; (c = getopt(argc, argv, "hvsEbt")) != EOF;) {
        switch (c) {
            case 'h': /* print help message */
                usage();
                break;
            case 'v': /* emit additional diagnostic info */
                verbose = 1;
                break;
            case 't': /* 文件 */
                tracefile = fopen(argv[optind], "r");
                if (tracefile == NULL) usage();
                break;
            case 's':  // 组数的位
                s = atoi(argv[optind]);
                if (s <= 0) usage();
                S = 1 << s;
                break;
            case 'E':  // 每一组的行数
                E = atoi(argv[optind]);
                if (E <= 0) usage();
                break;
            case 'b':
                b = atoi(argv[optind]);
                if (b <= 0) usage();
                B = 1 << b;
                break;
        }
    }
}
void parse(char* line)
{
    if(verbose){
        char* ptr=line;
        while(*ptr == ' ') ptr++;
        while(*ptr!='\n'){
            printf("%c",*ptr);
            ptr++;
        }
        printf(" ");
    }
    char* p = line;
    addr = 0;
    while(*p == ' ') p++;
    type = *p++;
    while(*p == ' ') p++;
    while(*p != ',') {
        if(*p >= '0' && *p <= '9') {
            addr = addr * 16 + *p - '0';
        } else if(*p >= 'a' && *p <= 'f') {
            addr = addr * 16 + *p - 'a' + 10;
        } else if(*p >= 'A' && *p <= 'F') {
            addr = addr * 16 + *p - 'A' + 10;
        }
        p++;
    }
}
void fun(FILE* tracefile, Cache cache)
{
    char line[30];  // 存储每行内容

    // 使用 fgets 逐行读取
    while (fgets(line, sizeof(line), tracefile)) {
        int f = 0;
        parse(line);
        time++;
        int exchange = time;
        int tem_i = 0;
        unsigned setIndex = (addr >> b) & ((1 << s) - 1);
        unsigned tag = addr >> (s + b);
        if(type == 'S'|| type == 'L' || type == 'M') {
            for(int i = 0; i < E; i++) {
                if(cache[setIndex][i].count < exchange) {
                    exchange = cache[setIndex][i].count;
                    tem_i = i;
                }
                if(cache[setIndex][i].valid && cache[setIndex][i].flag == tag) {
                    f = 1;
                    cache[setIndex][i].count = time;
                }
            }
            if(f == 0) {
                misses++;
                if(exchange != 0) evictions++; 
                cache[setIndex][tem_i].valid = 1;
                cache[setIndex][tem_i].flag = tag;
                cache[setIndex][tem_i].count = time;
            }
                if(type == 'L' || type == 'S') {
                    if(f){
                        hits++;
                        if(verbose) printf("hit\n");
                    }else{
                        if(exchange ==0 ){
                            if(verbose) printf("miss\n");
                        } else {
                            if(verbose) printf("miss eviction\n");
                        }
                    }
                    
                }
                if(type == 'M') {
                    if(f){
                        hits+=2;
                        if(verbose) printf("hit hit\n");
                    }else{
                        hits++;
                        if(exchange == 0) {
                            if(verbose) printf("miss hit\n");
                        } else {
                            if(verbose) printf("miss eviction hit\n");
                        }
                    } 
                }                        
                
            
        }
    }
}
int main(int argc, char* argv[])
{
    opt(argc, argv);
    // Set set = (Set)malloc(sizeof(struct Line) * E);
    Cache cache = (Cache)malloc(sizeof(Set) * S);
    for(int i=0;i<S;i++) {
        cache[i] = (Set)malloc(sizeof(struct Line) * E);
    }
     if (tracefile == NULL) {
        printf("Error: %s\n", "No such file or directory");
        exit(1);
    }

    fun(tracefile,cache);

    for(int i=0;i<S;i++) {
        free(cache[i]);
    }
    free(cache);

    fclose(tracefile);  // 关闭文件
    printSummary(hits, misses, evictions);
    return 0;
}
