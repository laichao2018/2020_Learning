#include "math_func.h"
double power(double base, double exponent)
{
    int result = base;
    int i;
    if (exponent == 0)
    {
        return 1;
    }
    for (int i = 1; i < exponent; i++)
    {
        result *= base;
    }
    return result;
}