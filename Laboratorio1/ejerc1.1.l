%%

[ \t]+                   {printf(" ");}
.                       {printf(yytext);}
%%
