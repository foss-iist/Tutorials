#include<stdio.h>
#include<math.h>
int main(){
  double t;
  for( t=0;t<2.*M_PI;t+=0.01 )
    fprintf(stdout,"%lf %lf\n",t,sin(t));
}
