#include<stdio.h>

int main()
{
  char a;
  FILE *F1 = stdout, *F2 = stdin, *F3 = stderr,*F4 = fopen("new","w+");
/* INPUT */
  fprintf(F1,"Enter something : ");
  fscanf(F2,"%c",&a);
/* OUTPUT */
  fprintf(F1,"Hello world - %c!\n",a);
  fprintf(F3,"Hello world - %c!\n",a);
  fprintf(F4,"Hello world - %c!\n",a);

  return 0;
}
