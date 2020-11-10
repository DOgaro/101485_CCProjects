%{

  #include <stdio.h>
  #include <stdlib.h>
  int yylex(void);
  int yyerror(const char *s);

%}

%token HI BYE

%%

program:
         hi bye
        ;

hi:
        HI     { printf("Hello David\n");   }
        ;
bye:
        BYE    { printf("Bye Ogaro\n"); exit(0); }
         ;