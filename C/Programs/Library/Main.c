#include<stdio.h>
#include<library.h>
int main(){  double a,b;
  fprintf(stdout,"Enter \"a\" to be squared : ");
  fscanf(stdin,"%lf",&a);
  fprintf(stdout,"a^2 : %lf\n\n",square(a));

  fprintf(stdout,"Enter \"b\" to be cubed : ");
  fscanf(stdin,"%lf",&b);
  fprintf(stdout,"b^3 : %lf\n\n",cube(b));

  return 0;
}
