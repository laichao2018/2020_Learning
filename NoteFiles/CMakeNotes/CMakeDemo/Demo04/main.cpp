#include "math/MathFunc.h"
#include <stdio.h>
#include <stdlib.h>
#include <iostream>

#ifdef USE_MYMATH
#include "math/MathFunc.h"
#else
#include <cmath>
#endif

int main()
{
    int base = 3;
    int exponent = 4;
#ifdef USE_MYMATH
    std::cout << "Use our own library.\n";
    double result = power(base, exponent);
#else
    std::cout << "Use standard library.\n";
    double result = pow(base, exponent);
#endif
    std::cout << "Result: " << result << std::endl;
    return 0;
}