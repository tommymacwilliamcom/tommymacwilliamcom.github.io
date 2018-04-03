#include <stdio.h>

int print_int(int number);

/**
 * Print a number
 *
 */
int print_int(int number) {
    printf("Here's your number! %d\n", number);
    return 0;
}

int main(int argc, char* argv[]) {
    // print the integer 5
    print_int(5);
    return 0;
}

