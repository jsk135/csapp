// #include<stdio.h>
int sum(int* a,int n);
int array[2] = {1,2};
static int x = 15213;

int main()
{
    x = 15212;
    int val = sum(array,2);
    return val;
}