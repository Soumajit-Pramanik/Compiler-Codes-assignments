#include <stdlib.h>
#include <stdio.h>
#include <string.h>


typedef enum{
    IF,THEN,ELSE,END,
    IDENTIFIER,NUM,
    INT,CHAR,UMINUS
}TokenType;
/*
struct symtab{
	char *lexeme;
        char *type;
	char *token;
	int decl_flag;
	int init_flag;
	};
struct symtab table[50];
int _index=0;

struct symtab * push_into_table(char *lexeme1,char *token1)
{
	strcpy(table[_index].lexeme,lexeme1);
        strcpy(table[_index].token,token1);
        table[_index].type='\0';
	table[_index].decl_flag=1;
	table[_index].init_flag=0;
        return &table[_index++];
}

void push_type(char *lexeme1,char *type1)
{
	int loopctr;
        for(loopctr=0;loopctr<_index;loopctr++)
	{
		if(strcmp(table[_index].lexeme,lexeme1)==0)
		{
			strcpy(table[_index].type,type1);
			break;
		}
	}
} 

char * get_type(char *lexeme1)
{
	int loopctr;
        for(loopctr=0;loopctr<_index;loopctr++)
	{
		if(strcmp(table[_index].lexeme,lexeme1)==0)
		{
			return table[_index].type;
		}
	}
return NULL;
}

int get_decl(char *lexeme1)
{
	int loopctr;
        for(loopctr=0;loopctr<_index;loopctr++)
	{
		if(strcmp(table[_index].lexeme,lexeme1)==0)
		{
			return table[_index].decl_flag;
		}
	}
return -1;
}*/
