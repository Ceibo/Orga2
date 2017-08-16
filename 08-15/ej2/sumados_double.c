#include <stdio.h>
extern double sumados(double, double);

double main(){
    double a, b;
    printf("Sumar dos numeros. Ingresar primer numero ");
    scanf("%lf", &a);
    printf("Ingresar segundo numero ");
    scanf("%lf", &b);
    printf("%lf\n", sumados(a, b));
    return 0;

    
}