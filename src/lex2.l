%{
#include <stdio.h>
%}
DIGITO [0-9]
Time ([01]?{DIGITO}|2[0-3]):[0-5]{DIGITO}(:[0-5]{DIGITO})?
email  [0-9a-z\.-]+@[a-z]+[.][a-z]{2,4}
%%
[[:space:]]+;
[[:^space:]]+;
{Time} {printf("Foi encontrado hora: %s", yytext);} 
{email} {printf("Foi encontrado um email: %s", yytext);} 
%%
int main() {
        yylex();
        return 0;
}
