#include "MathFunction.h"
double power(double base, int expoent)
{
    int result = base;
    int i;
    if (expoent == 0)
    {
        return 1;
    }

    for (i = 1; i < expoent; ++i)
    {
        result = result * base;
    }

    return result;
}