#include <stdio.h>
#include <stdlib.h>

int* f();
int* g();

int main(int argc, char** argv) {
    int* x = f();
    printf("x has the value: %d\n", *x);
    int* y = g();
    printf("x has the value: %d\n", *x);
    printf("y has the value: %d\n", *y);

    // IMPORTANT: DON'T FORGET TO DO THIS
    free(x);
    free(y);
}

int* f() {
    int* a = malloc(sizeof(int));
    *a = 5;
    return a;
}

int* g() {
    int* b = malloc(sizeof(int));
    *b = 10;
    return b;
}
