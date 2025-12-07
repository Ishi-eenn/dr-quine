#include <stdio.h>

/*
 * comment
 */

#define OUTPUT_FILE "Grace_kid.c"
#define SOURCE "#include <stdio.h>%1$c%1$c/*%1$c * comment%1$c */%1$c%1$c#define OUTPUT_FILE %2$cGrace_kid.c%2$c%1$c#define SOURCE %2$c%3$s%2$c%1$c#define GRACE() int main(void){FILE *f=fopen(OUTPUT_FILE, %2$cw%2$c); if(!f) return 1; fprintf(f, SOURCE, 10, 34, SOURCE); fclose(f); return 0;}%1$c%1$cGRACE()%1$c"
#define GRACE() int main(void){FILE *f=fopen(OUTPUT_FILE, "w"); if(!f) return 1; fprintf(f, SOURCE, 10, 34, SOURCE); fclose(f); return 0;}

GRACE()
