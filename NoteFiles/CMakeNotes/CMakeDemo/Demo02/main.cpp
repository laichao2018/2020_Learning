#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include "MathFunction.h"
int main()
{
    double base = 3;
    int exponent = 4;
    double result = power(base, exponent);
    std::cout << result << std::endl;

    return 0;
}