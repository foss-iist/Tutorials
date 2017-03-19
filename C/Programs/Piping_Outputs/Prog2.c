#include<stdio.h>
int main()
{
  double t,v;
  while(fscanf(stdin,"%lf %lf",&t,&v)!=EOF)
    fprintf(stdout,"%lf %lf\n",t,v*v);
}
  
    
