%{
#include "bison.h"
#include <stdio.h>
%}

%option noyywrap

%%

[0-9]+   { yylval.val = atoi(yytext); return NUM; }
[\+|\-]  { yylval.sym = yytext[0]; return OPA; }
[\*|/]   { yylval.sym = yytext[0]; return OPM; }
"("      { return LP; }
")"      { return RP; }
";"      { return STOP; }
<<EOF>>  { return 0; }
[ \t\n]+ { }
.        { printf("Unrecognized token!\n"); exit(1); }
%%
