#include <stdio.h>

int add_ints(int x, int y);

int main(int argc, char* argv[]) {
    // we don't need an extra variable to store the result in
    printf("%d\n", add_ints(23, 19));
}

int add_ints(int x, int y) {
    // we don't need to create a variable here either
    return x + y;
}
