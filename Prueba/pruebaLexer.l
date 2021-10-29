%{

int first = 0;
int second = 0;
char aritmetic[] = "a";
char type[] = "Multiplication";

void aritmeticSet();
%}


%%

[0-9]*  {printf("Numero Encontrado \n"); if(first == 0){first = atoi(yytext);}else if(second == 0){second = atoi(yytext);}}

"+"   { printf("Plus!! %s\n",yytext);aritmeticSet(yytext); }
"-"   { printf("Minus!! %s\n",yytext);aritmeticSet(yytext); }
"*"   { printf("Multiplication!! %s\n",yytext);aritmeticSet(yytext); }
"/"   { printf("Division!! %s\n",yytext);aritmeticSet(yytext); }

.   {printf("Error, lexer no preparado para este simbolo \n");}

\n  {return 0;}

%%

void aritmeticSet(char text[]){
    strcpy(aritmetic, text);

    if(strcmp(aritmetic, "+")){
        
        strcpy(type, "Sum");

    }else if(strcmp(aritmetic, "-")){
        strcpy(type, "Substract");
    }
    else if(strcmp(aritmetic, "*")){
        strcpy(type, "Multiplication");
    }else if(strcmp(aritmetic, "/")){
        strcpy(type, "Division");
    }
}

int yywrap(){}

int main(){


    yylex();
    printf("this is aritmetic and is a %s \n", type );
    printf("this is sparta %d and %d  \n" , first, second );
   return 0;

}

