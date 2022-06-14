%{
#include <stdio.h>
%}
DIGITO [0-9]
INTEIRO {DIGITO}+
PALAVRA [a-zA-Z]+
PLACA [A-Z]{3}[-]{DIGITO}{4}
TELEFONE {DIGITO}{4}[-]{DIGITO}{4}     
NOME ([A-Z][a-z]+[ ]?){3,4} 
%%
[[:space:]]+;
[[:^space:]]+;
{TELEFONE} {printf("Foi encontrado um Telefone: %s\n", yytext);}
{INTEIRO} {printf("Foi encontrado um interio Positivo: %s\n", yytext);}
[-]{INTEIRO} {printf("Foi encontrado um inteiro Negativo: %s\n", yytext);}
{INTEIRO}[.]{INTEIRO} {printf("Foi encontrado um Decimal Positivo: %s\n", yytext);}
[-]{INTEIRO}[.]{INTEIRO} {printf("Foi encontrado um Decimal Negativo: %s\n", yytext);}
{NOME} {printf("Foi encontrado um Nome: %s\n", yytext);} 
{PALAVRA} {printf("Foi encontrado uma Palavra: %s\n", yytext);} 
{PLACA} {printf("Foi encontrado uma PLACA: %s\n", yytext);} 
%%
int main() {
        yylex();
        return 0;
}
