%{
int reales = 0, identificadores = 0;  
%}

digits [1-9][0-9]*
real ({digits}|0)\.[0-9]+
d[0-9]
l[a-zA-Z]
%%
[Pp][Rr][Oo][Cc][Ee][Dd][Uu][Rr][Ee] 	;
[Bb][Ee][Gg][Ii][Nn]                 	;
[Ee][Nn][Dd]                         	;
\/\/.+\n                             	;
{l}({l}|{d})*([_]({l}|{d})+)*		{identificadores++;}
{real}([Ee][+-]?[0-9]+)?	     	{reales++;}
\n    				     	;
.      				     	;
%%

void main() 
{
	yylex();
	printf("%d %d\n", reales, identificadores);  
}
