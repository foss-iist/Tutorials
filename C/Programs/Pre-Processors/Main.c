#include<stdio.h>
#ifndef a
int function(double var){
  return var*var; }
#else
int function(double var){
  return var; }
#endif
int main(){ int i;
  fprintf(stdout,"Enter i : ");
  fscanf(stdin,"%d",&i);
  fprintf(stdout,"function(i) = %d\n",
	  function(i));
}
  
