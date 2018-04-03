#include <stdio.h>

int main(int argc, char** argv) {
    printf("%d\n", fib(4));
}

int fib(int n) {
    if (n <= 1)
        return 1;
    return fib(n - 1) + fib(n - 2);
}
