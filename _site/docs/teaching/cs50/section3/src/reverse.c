#include <stdio.h>
#include <string.h>

int main(int argc, char** argv) {
    char* message = "I love CS50!";
    int length = strlen(message);
    char reversed[length];

    // reverse array
    for (int i = 0; i < length; i++)
        reversed[length - 1 - i] = message[i];

    // print array
    for (int i = 0; i < length; i++)
        printf("%c", reversed[i]);

    printf("\n");
}
