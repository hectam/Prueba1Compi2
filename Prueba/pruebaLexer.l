%{

int first = 0;
int second = 0;
char aritmetic[] = "aa";

char type[] = "nonMultiplication";

void aritmeticSet();
%}


%%

[0-9]*  {printf("Numero Encontrado \n"); if(first == 0){first = atoi(yytext);}else if(second == 0){second = atoi(yytext);}}

"+"   { printf("Plus!! %s\n",yytext);aritmeticSet(yytext,"Sum"); }
"-"   { printf("Minus!! %s\n",yytext);aritmeticSet(yytext,"Substract"); }
"*"   { printf("Multiplication!! %s\n",yytext);aritmeticSet(yytext,"Multiplication"); }
"/"   { printf("Division!! %s\n",yytext);aritmeticSet(yytext,"Division"); }
"<"   { printf("greater!! %s\n",yytext);aritmeticSet(yytext,"greater"); }
">"   { printf("less!! %s\n",yytext);aritmeticSet(yytext,"Substract"); }
"=="   { printf("Equal!! %s\n",yytext);aritmeticSet(yytext,"Multiplication"); }
"<="   { printf("greaterOrEqual!! %s\n",yytext);aritmeticSet(yytext,"Division"); }
">="   { printf("lessOrEqual!! %s\n",yytext);aritmeticSet(yytext,"Division"); }
"true"   { printf("true!! %s\n",yytext); }
"false"   { printf("false!! %s\n",yytext); }
.   {printf("Error, lexer no preparado para este simbolo \n");}

\n  {return 0;}

%%

void aritmeticSet(char text[], char typed[]){
    strcpy(aritmetic, text);

    
    strcpy(type, typed);

}


int yywrap(){}

int main(){


    yylex();
    
    printf("this is sparta %d and %d  \n" , first, second );
   return 0;

}

