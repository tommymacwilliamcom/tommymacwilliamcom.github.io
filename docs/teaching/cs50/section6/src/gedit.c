#include <stdio.h>
#include <cs50.h>
#include <string.h>

int main(int argc, char** argv) {
    FILE* fp = fopen(argv[1], "w");
    char* input;

    // continue to ask user for input
    for (;;) {
        // get input from user
        input = GetString();

        // once user types "quit", quit the program
        if (strcmp(input, "quit") == 0) {
            fclose(fp);
            return 0;
        }

        // user typed in text, so write that to file
        else {
            fputs(input, fp);
            fputs("\n", fp);
        }
    }

}
