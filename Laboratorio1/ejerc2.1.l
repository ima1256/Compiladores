digits [1-9][0-9]*
real ({digits}|0)\.[0-9]+
%%
{real}([Ee][+-]?[0-9]+)?	         { printf("%s:\tSI\n",yytext); }
\n					 ;					 
.+   	                       		 { printf("%s:\tNO\n",yytext); }
%%

