#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>

int main(void) {
  int x = 5;

  if (strchr(__FILE__, '_') != NULL)
  x--;

  if (x < 0)
  return 0;

  char filename[64];
  char compile[160];
  char execute[64];

  snprintf(filename, sizeof(filename), "Sully_%d.c", x);
  snprintf(compile, sizeof(compile),
   "cc -Wall -Wextra -Werror %s -o Sully_%d",
   filename, x);
  snprintf(execute, sizeof(execute), "./Sully_%d", x);

  int f = open(filename, O_WRONLY | O_CREAT | O_TRUNC, 0644);
  if (f < 0)
  return 1;

  char *c = "#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <string.h>%1$c#include <fcntl.h>%1$c#include <unistd.h>%1$c%1$cint main(void) {%1$c  int x = %4$d;%1$c%1$c  if (strchr(__FILE__, '_') != NULL)%1$c  x--; %1$c%1$c  if (x < 0)%1$c  return 0;%1$c%1$c  char filename[64];%1$c  char compile[160];%1$c  char execute[64];%1$c%1$c  snprintf(filename, sizeof(filename), %2$cSully_%%d.c%2$c, x);%1$c  snprintf(compile, sizeof(compile), %2$ccc -Wall -Wextra -Werror %%s -o Sully_%%d%2$c, filename, x);%1$c  snprintf(execute, sizeof(execute), %2$c./Sully_%%d%2$c, x);%1$c%1$c  int f = open(filename, O_WRONLY | O_CREAT | O_TRUNC, 0644);%1$c  if (f < 0)%1$c  return 1;%1$c%1$c  char *c = %2$c%3$s%2$c;%1$c  dprintf(f, c, 10, 34, c, x);%1$c  close(f);%1$c%1$c  system(compile);%1$c  if (x >= 0)%1$c  system(execute);%1$c%1$c  return 0;%1$c}%1$c";

  dprintf(f, c, 10, 34, c, x);
  close(f);

  system(compile);
  if (x >= 0)
  system(execute);

  return 0;
}
