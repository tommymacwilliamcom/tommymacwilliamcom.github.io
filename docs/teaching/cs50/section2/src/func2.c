#include <stdio.h>

int add_ints(int x, int y);

int main(int argc, char* argv[]) {
    // display the result
    printf("%d\n", add_ints(GetInt(), GetInt()));

    return 0;
}

int add_ints(int x, int y) {
    // add two numbers
    return x + y;
}
