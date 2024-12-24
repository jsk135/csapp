#include "cachelab.h"
struct Line{
    int valid;
    unsigned flag; 
    int count;
};
typedef struct Line* Set;
typedef Set* cache;
int main()
{

    printSummary(0, 0, 0);
    return 0;
}
