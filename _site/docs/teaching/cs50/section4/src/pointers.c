#include <stdio.h>

int main(int argc, char** argv) {

    int a = 3, b = 4, c = 5;
    int *pa = &a, *pb = &b, *pc = &c;

    a = b * c;
    printf("a = %d\n", a);

    a *= c;
    printf("a = %d\n", a);

    b = *pa;
    printf("b = %d\n", b);

    pc = pa;

    *pb = b * c;
    printf("*pb = %d\n", *pb);

    c = (*pa) * (*pc);
    printf("c = %d\n", c);

    *pc = a * (*pb);
    printf("*pc = %d\n", *pc);
}
