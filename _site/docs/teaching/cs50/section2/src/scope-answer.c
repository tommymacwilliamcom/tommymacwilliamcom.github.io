#include <stdio.h>

void f();
void g();

// global variable
int x = 5;

int main(int argc, char* argv[]) {
    // print the global (5)
    printf("%d\n", x);
    // create a local
    int x = 7;
    // print the local (7)
    printf("%d\n", x);
    f();
    // still printing the local (7)
    printf("%d\n", x);
    g();
}

void f() {
    // modify the global
    x = 10;
    // create a local
    int x = 42;
    // print the local (42)
    printf("%d\n", x);
}

void g() {
    // print the global (10)
    printf("%d\n", x);
}
