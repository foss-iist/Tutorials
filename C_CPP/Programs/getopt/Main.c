#include<getopt.h>
#include<stdio.h>
#include<stdlib.h>

const char* progname;
const struct option op_long[] = {
  {"help   ", 0, NULL, 'h'},
  {"value_a", 1, NULL, 'a'},
  {"value_b", 1, NULL, 'b'},
  {NULL, 0, NULL, 0}
};
const int op_num = 3;
const char* const op_desc[] = {
  " - \tPrint this help message",
  "int\tSet value a",
  "int\tSet value b"
};
void PrintUsage()
{
  fprintf(stderr,"Usage: %s [options ...]\n",progname);
  int i;
  for( i=0;i<op_num;i++ )
    fprintf(stderr,"-%c --%s %s\n",
	    op_long[i].val,op_long[i].name,op_desc[i]);
} 

int main(int argc,char* argv[])
{
  progname = argv[0];
  const char* const op_short = "ha:b:";
  int next_option;
  int a=0,b=0;
  do{
    next_option = getopt_long(argc,argv,op_short,op_long,NULL);

    switch(next_option){
    case 'h': PrintUsage(); exit(1);
    case 'a': a = atof(optarg); break;
    case 'b': b = atof(optarg); break;
    }
  }while(next_option!=-1);

  fprintf(stdout,"Value a : %d\nValue b : %d\n",a,b);

  return 0;
}
