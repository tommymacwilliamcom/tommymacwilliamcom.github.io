#include <stdio.h>

int* f();
int* g();

int main(int argc, char** argv) {
    int* x = f();
    printf("x has the value: %d\n", *x);
    int* y = g();
    printf("x has the value: %d\n", *x);
}

int* f() {
    int a = 5;
    return &a;
}

int* g() {
    int b = 10;
    return &b;
}
