#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>
#include<unistd.h>

void *function(void* a)
{
  int* p = (int*)a;
  /* fprintf(stdout,"p is %d\n",*p); */
  fprintf(stdout,"Called Thread - %d - %d\n",pthread_self(),getpid());
  
  return 0;
}

int main()
{
  pthread_t tid;
  int i=10;
  pthread_create(&tid,NULL,function,&i);
  fprintf(stdout,"Primary Thread - %d - %d\n",pthread_self(),getpid());

  pthread_join(tid,NULL);

  return 0;
}
