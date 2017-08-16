#include <stdio.h>
extern int sumados(int, int);

int main(){
    int a, b;
    printf("Sumar dos numeros. Ingresar primer numero ");
    scanf("%d", &a);
    printf("Ingresar segundo numero ");
    scanf("%d", &b);
    printf("%d\n", sumados(a, b));
    return 0;

    
}