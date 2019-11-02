#include "calculator.h"

int main(){
	double a;
	Calculator calc;
	a = calc.Add(1.0,2.0);
	return 0;
}


int Calculator::Add (double a, double b)
{
	return a + b + 0.5;
}

int Calculator::Sub (double a, double b)
{
	return Add (a, -b);
}
