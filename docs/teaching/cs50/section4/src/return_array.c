#include <stdio.h>
#include <stdlib.h>

#define SIZE 5

int* f(int);
int* g(int);

int main(int argc, char** argv) {
    // create a new array
    int* a = f(SIZE);

    // fill the array
    for (int i = 0; i < SIZE; i++)
        a[i] = i;

    // print out the array
    for (int i = 0; i < SIZE; i++)
        printf("%d\n", a[i]);

    // what's going on here?
    for (int i = 0; i < SIZE + 10; i++)
        printf("%d\n", a[i]);

    // DON'T FORGET THIS IT IS SERIOUSLY IMPORTANT
    free(a);
}

/**
 * Return an array of size n
 *
 */
int* f(int n) {
    return malloc(sizeof(int) * n);
}

/**
 * WILL NOT WORK
 *
 */
int* g(int n) {
    int a[n];
    return a;
}
