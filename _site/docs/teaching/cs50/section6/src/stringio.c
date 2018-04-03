#include <stdio.h>

int main(int argc, char** argv) {
    FILE* out = fopen("out.txt", "w");
    fputs("here is a line\n", out);
    fprintf(out, "here is a number! %d\n", 5);
    fputc('c', out);
    fclose(out);

    FILE* in = fopen("in.txt", "r");
    char buf[128];
    fgets(buf, 128, in);
    printf("First line: %s", buf);
    int num1, num2;
    fscanf(in, "%d %d", &num1, &num2);
    printf("First number: %d\nSecond number: %d\n", num1, num2);
    fclose(in);
}
