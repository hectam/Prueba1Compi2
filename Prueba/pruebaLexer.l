%{

int first = 0;
int second = 0;
char aritmetic[] = "a";
char type[] = "Multiplication";

void aritmeticSet();
%}


%%

[0-9]*  {printf("Numero Encontrado \n"); if(first == 0){first = atoi(yytext);}else if(second == 0){second = atoi(yytext);}}

"+"   { printf("Plus!! %s\n",yytext);aritmeticSet(yytext,"Sum"); }
"-"   { printf("Minus!! %s\n",yytext);aritmeticSet(yytext,"Substract"); }
"*"   { printf("Multiplication!! %s\n",yytext);aritmeticSet(yytext,"Multiplication"); }
"/"   { printf("Division!! %s\n",yytext);aritmeticSet(yytext,"Division"); }

.   {printf("Error, lexer no preparado para este simbolo \n");}

\n  {return 0;}

%%

void aritmeticSet(char text[], char typed[]){
    strcpy(aritmetic, text);

    
    strcpy(type, typed);

    

int yywrap(){}

int main(){


    yylex();
    printf("this is aritmetic and is a %s \n", type );
    printf("this is sparta %d and %d  \n" , first, second );
   return 0;

}

