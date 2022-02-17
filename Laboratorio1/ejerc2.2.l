l [a-zA-Z]
d [0-9]
%%
{l}({l}|{d})*([_]({l}|{d})+)*             { printf("%s:\tSI\n",yytext); }
\n                                       ;
.+                                       { printf("%s:\tNO\n",yytext); }
%%

