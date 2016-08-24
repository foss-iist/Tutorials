#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>

int main()
{
  int filedes[2];

  pipe(filedes);

  pid_t fpid;
  fpid = fork();

  if(fpid==0){
    /* CHILD */
    close(filedes[0]);
    dup2(filedes[1],STDOUT_FILENO);
    
    execl("Child","Child",NULL);
  }
  else{
    close(filedes[1]);

    char msg[20];
    dup2(filedes[0],STDIN_FILENO);
    fgets(msg,sizeof(msg)-1,stdin);

    fprintf(stderr,"Parent Recieves : %s\n",msg);
  }
  return 0;
}
