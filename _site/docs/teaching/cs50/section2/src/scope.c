#include <stdio.h>

void f();
void g();

// global variable
int x = 5;

int main(int argc, char* argv[]) {
    printf("%d\n", x);
    int x = 7;
    printf("%d\n", x);
    f();
    printf("%d\n", x);
    g();
}

void f() {
    x = 10;
    int x = 42;
    printf("%d\n", x);
}

void g() {
    printf("%d\n", x);
}
