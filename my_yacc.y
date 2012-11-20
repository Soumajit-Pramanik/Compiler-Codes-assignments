%{
#include <ctype.h>
#include <stdio.h>
#include "myhead.h"
int yylex(void);
#define YYSTYPE double
void yyerror(char*);
# undef fprintf
%}

%token INT
%token CHAR
%token IDENTIFIER
%token NUM
%token ','
%left '+' '-'
%left '*' '/'
%right UMINUS

%%

lines:lines expr '\n' {printf("%g\n",$2);}
      |lines '\n'
      |D
      | 	
      ;
expr :expr '*' expr {$$=$1*$3;}
     |expr '/' expr {$$=$1/$3;}
     |expr '+' expr {$$=$1+$3;}
     |expr '-' expr {$$=$1+$3;}
     |'(' expr ')' {$$=$2;}
     |'-' expr %prec UMINUS {$$=-$2;}
     |IDENTIFIER {}
     |NUM 	{}	
     ;
T    :INT {}
     |CHAR {}
     ;
L    :L ',' IDENTIFIER {}
     |IDENTIFIER {}
     ;
D    :T L {printf("T is %g, L is %g",$1,$2);}
     ;

%%
main()
{
   yyparse();
}

void yyerror (char *s)
{
  fprintf (stderr, "%s\n", s);
}
void yywrap ()
{
}
	
