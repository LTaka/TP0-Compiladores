%{
#include <stdio.h>
%}
DIGITO [0-9]
Time ([01]?{DIGITO}|2[0-3]):[0-5]{DIGITO}(:[0-5]{DIGITO})?
email  ([0-9a-z\.-]+)[@]([a-z]+[.][a-z]{2,4})
data (([1-9]|2[0-9]|3[0-1])([/][1-9]|1[0-2])([/][1-9][0-9]{3}))
password ([A-Za-z0-9]+){8,32}
%%
[[:space:]]+;
[[:^space:]]+;
{data} {printf("\nFoi encontrado um data. LEXEMA: %s",yytext);}  
{password} {printf("\nFoi encontrado um password. LEXEMA: %s",yytext);} 
{Time} {printf("\nFoi encontrado hora. LEXEMA: %s",yytext);} 
{email} {printf("\nFoi encontrado um email. LEXEMA: %s",yytext);}  

%%
int main() {
        yylex();
        return 0;
}
