#include<stdio.h>

double multiply(double a,double b)
{
  return a*b;
}

int main()
{
  double a,b;
  fprintf(stdout,"Enter a : ");
  fscanf(stdin,"%lf",&a);
  
  fprintf(stdout,"Enter b : ");
  fscanf(stdin,"%lf",&b);

  fprintf(stdout,"multiply(a,b) = %lf\n",multiply(a,b));

  return 0;
}
