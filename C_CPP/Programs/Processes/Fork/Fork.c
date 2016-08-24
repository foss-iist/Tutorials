#include<stdio.h>
#include<unistd.h>
int main()
{
  pid_t fpid,childpid;
  fpid = getpid();
  childpid = fork();
  if( childpid==0 ){
    fprintf(stdout,"I am a child.\n"
	    "Child: My PID is %d.\n"
	    "Child: My Parent's PID is %d.\n\n",getpid(),fpid);  }
  else{
    fprintf(stdout,"I am a parent.\n"
	    "My PID is %d.\n"
	    "My Child's PID is %d.\n\n",getpid(),childpid);  }
  return 0;
}
