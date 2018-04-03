#include <stdio.h>

void increment1(int);
void increment2(int*);


int main(int argc, char** argv) {
    int x = 5;
    printf("Here we go, x is %d\n", x);
    increment1(x);
    printf("After increment1, x is %d\n", x);
    increment2(&x);
    printf("After increment2, x is %d\n", x);
}

void increment1(int x) {
    x  = x + 1;
}

void increment2(int* x) {
    *x = *x + 1;
}
