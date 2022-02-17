inicio \(\*
fin \*\)
%%
({inicio}[^\*\)]*{fin})+         { printf("%s:\tSI\n",yytext); }
\n                                       ;
.+                                       { printf("%s:\tNO\n",yytext); }
%%

