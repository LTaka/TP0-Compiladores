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
{TELEFONE} {printf("\nFoi encontrado um telefone. LEXEMA: %s",yytext);}
{INTEIRO} {printf("\nFoi encontrado um numero inteiro positivo. LEXEMA: %s",yytext);}
[-]{INTEIRO} {printf("\nFoi encontrado um numero inteiro negativo. LEXEMA: %s",yytext);}
{INTEIRO}[.]{INTEIRO} {printf("\nFoi encontrado um numero com parte decimal positivo. LEXEMA: %s",yytext);}
[-]{INTEIRO}[.]{INTEIRO} {printf("\nFFoi encontrado um numero com parte decimal negativo. LEXEMA: %s",yytext);}
{NOME} {printf("\nFoi encontrado um nome proprio. LEXEMA: %s",yytext);} 
{PALAVRA} {printf("\nFoi encontrado uma palavra. LEXEMA: %s",yytext);} 
{PLACA} {printf("\nFoi encontrado uma placa. LEXEMA: %s",yytext);} 
%%
int main() {
        yylex();
        return 0;
}
