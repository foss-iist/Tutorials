#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>

pthread_mutex_t lock;

typedef struct{
  double a,b;}SHARE;
SHARE S;

void* tstart(void* args);
int main()
{
  /* Initialization of Shared Data */
  S.a = 1;
  S.b = 2;

  SHARE ADD = (SHARE){1,1};
  pthread_mutex_init( &lock,NULL );
  
  pthread_t tid;
  fprintf(stdout,"Main thread - %d - Creating thread!\n",pthread_self());
  pthread_create(&tid,NULL,tstart,&ADD);
  sleep(1);
  
  fprintf(stdout,"Main thread - Locking!\n");
  pthread_mutex_lock(&lock);
  fprintf(stdout,"Main thread - Locked! Operating!\n");
  S.a += 10;
  fprintf(stdout,"Main thread - Operated! Unlocking!\n");
  pthread_mutex_unlock(&lock);
  fprintf(stdout,"Main thread - Unlocked! Quitting!\n");

  fprintf(stdout,"Main thread - Joining!\n");
  pthread_join(tid,NULL);
  fprintf(stdout,"S = (%lf,%lf)\n",S.a,S.b);
  return 0;
}

void* tstart(void* args)
{
  SHARE *ARG = (SHARE*)args;

  fprintf(stdout,"Inside new thread - %d - locking!\n",pthread_self());
  pthread_mutex_lock(&lock);
  fprintf(stdout,"Inside new thread - locked! Operating!\n");  
  S.a += ARG->a;
  S.b += ARG->b;
  fprintf(stdout,"Inside new thread - Operated! Unlocking!\n");
  pthread_mutex_unlock(&lock);
  fprintf(stdout,"Inside new thread - Unlocked! Stopping!\n");
}
