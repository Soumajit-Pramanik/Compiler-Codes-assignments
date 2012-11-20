%{
#include <ctype.h>
#include "myhead.h"
%}

digit [0-9]
letter [a-zA-Z]
number (digit)+
id (letter|[_])(letter|digit|[_])*
integer [i][n][t]
character [c][h][a][r]
comma [,]

%%
{integer} {return INT;}
{character} {return CHAR;}
{number} {return NUM;}
{id} {return IDENTIFIER;}
{comma} {return ',';}
[-+*/] {return *yytext;}
. {}
%%


