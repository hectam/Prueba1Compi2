%{

int first = 0;
int second = 0;
char aritmetic[] = "a";
char type[] = "x";

void aritmeticSet();
%}


%%

[0-9]*  {printf("Numero Encontrado \n"); if(first == 0){first = atoi(yytext);}else if(second == 0){second = atoi(yytext);}}

"+"   { printf("Plus!! %s",yytext);aritmeticSet(yytext); }
"-"   { printf("Minus!! %s",yytext);aritmeticSet(yytext); }
"*"   { printf("Multiplication!! %s",yytext);aritmeticSet(yytext); }
"/"   { printf("Division!! %s",yytext);aritmeticSet(yytext); }

.   {printf("Error, lexer no preparado para este simbolo \n");}

\n  {return 0;}

%%

void aritmeticSet(char text[]){
    strcpy(aritmetic, text);

    if(strcmp(aritmetic, "+")){
        
        strcpy(, "");
    }else if(strcmp(aritmetic, "-")){
        
    }
    else if(strcmp(aritmetic, "*")){
        
    }else if(strcmp(aritmetic, "/")){
        
    }
}

int yywrap(){}

int main(){


    yylex();
    printf("this is aritmetic %s", aritmetic );
    printf("this is sparta %d and %d  \n" , first, second );
   return 0;

}

