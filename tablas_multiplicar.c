/************************************
 * 
 * 
 * @author Alex AC
 *  2020 Agosto
 ************************************/

#include<stdio.h> 
#include<stdlib.h> 
 
void tabla (int a, int b, int c, int d);

int main(void) {  

	
	printf("\t\t - - * Programa para mostrar las tablas de multiplicar. * - - \n\n") ;
	tabla(1, 10, 1, 5);
	tabla(1, 10, 6, 10);

return 0;
}   

// multiplicacion = '[c->d]' * '[a->b]' | con tablas desde 'c' hasta 'd'
// Definicion en Vertical (multiplicacion 'a'x'b'), Horizontal (tablas de 'c' a 'd')
void tabla(int a, int b, int c, int d){
	
	int i,j;

	for (j = c; j <= d; j++){
		printf("\tTabla %i ", j) ;
	}

	printf("\n");
	for ( i = a; i <= b; i++) {
		for ( j = c; j <= d; j++) {
			printf("\t%i x %i = %i", j, i, j*i) ;
		}
		printf("\n") ;
	}
	
	printf("\n") ;
}
