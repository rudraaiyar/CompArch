#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(void) {
  char hello[] = "hello ", world[] = "world!\n", *s;
  s = strcat(hello,world);
  printf(s); //printing pointer which can't equal to value
return 0;
} // missing bracket

//Q1. missing bracket at the end of code and
//Q2. implement the string as an array
//Q3. gdb gcc -o h hello.c / bounds checking: because it means every time you change an index, you have to do an if statement.
//Q4. pro: more efficient. con: fewer functionalities ex. taking the length.
