#include <stdio.h>

/*
 * outside comment
 */

static void print_source(char *s) {
  printf(s, 10, 34, s);
}

int main(void) {
  // inside comment

  char *s = "#include <stdio.h>%1$c%1$c/*%1$c * outside comment%1$c */%1$c%1$cstatic void print_source(char *s) {%1$c  printf(s, 10, 34, s);%1$c}%1$c%1$cint main(void) {%1$c  // inside comment%1$c%1$c  char *s = %2$c%3$s%2$c;%1$c%1$c  print_source(s);%1$c  return 0;%1$c}%1$c";

  print_source(s);
  return 0;
}
