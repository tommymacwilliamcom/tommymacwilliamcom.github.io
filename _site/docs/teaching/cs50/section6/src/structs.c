#include <stdio.h>
#include <stdlib.h>

struct quiz_scores {
    int quiz0;
    int quiz1;
};

struct staff {
    char* name;
    int year;
};

typedef struct student {
    char* name;
    int year;
    struct quiz_scores scores;
    struct staff* tf;
} student;

int main(int argc, char** argv) {
    // seriously, coolest syntax ever
    struct quiz_scores scores = { .quiz1 = 100, .quiz0 = 90 };

    // create a pointer to a struct on the heap
    struct staff* tommy = malloc(sizeof(struct staff));
    // notice we need -> because we're using a pointer
    tommy->name = "Tommy";
    tommy->year = 2013;

    // and finally, a student
    student julia = { "Julia", 2013 };
    // we're not using a pointer anymore, so we can use .
    julia.scores = scores;
    julia.tf = tommy;

    // just because C will give us a warning if we don't use the struct
    printf("%s\n", julia.name);

    // NEVER EVER EVER FORGET THIS
    free(tommy)
}
