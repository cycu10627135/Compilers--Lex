%{
unsigned int parNum = 0;
unsigned int i = 0, j = 0;
%}
leftPar	[{]
newLine	\n[}]
rightPar	[}]	
notOne	\n\t
eol		\n
%%
{leftPar}	{ parNum++;printf("{"); }
{newLine}	{ parNum--;
		  printf("\n"); 
		  for ( i = 0 ; i < parNum ; i++ ) {
		  	printf("\t");
		  }  
		  printf("}"); 
		}
{rightPar}	{ parNum--;printf("}");	}

{notOne}	{ printf("\n"); 
		 for ( i = 0 ; i < parNum ; i++ ) {
	 	  	printf("\t");
		  } 
		}
{eol}		{ printf("\n"); 
		   for ( i = 0 ; i < parNum ; i++ ) {
	 	  	printf("\t");
		   }  
		}
%%
int main ( int argc, char *argv[] ) {
	yylex();
	return(0);
}
