//...leetcode_29_2021-10-12
//...https://leetcode-cn.com/problems/divide-two-integers/
#include <iostream>
#include <vector>
#include <algorithm>
#include <limits.h>

using namespace std;

void test();
int divide(int dividend, int divisor);

int main()
{
    test();
    return 0;
}

void test()
{
    cout << divide(-2147483648, -3);
}

int divide(int dividend, int divisor)
{
    int max = 2147483647;
    int min = -2147483648;
    if (dividend == min && divisor == -1)
    {
        return max;
    }
    if (dividend == 0 || divisor == min)
    {
        return 0;
    }
    int res = 0, step = 1;

    if ((dividend == min || dividend == max))
    {
        if (divisor == 1)
        {
            return dividend;
        }
        if (divisor == -1)
        {
            return 0 - dividend;
        }
    }

    bool sign = true;
    if(!((dividend>=0&&divisor>=0)||(dividend<0&&divisor<0)))
    {
        sign = false;
    }
    while (abs(dividend) >= abs(divisor) || dividend == min)
    {
        int sum = 0;
        cout<<step<<" "<<sum<<" "<<res<<" "<<dividend<<endl;
        for (int i = step; i > 0; i--)
        {
            sum += divisor;
        }
        res += step;
        if (sign)
        {
            dividend -= sum;
        }
        else
        {
            dividend += sum;
        }
        if (abs(dividend) < abs(sum))
        {
            step = 1;
        }
        else if(abs(dividend) > abs(sum))
        {
            step += step;
        }
        cout<<step<<" "<<sum<<" "<<res<<" "<<dividend<<endl<<endl;    
    }
    if(sign)
    {
        return res;
    }
    return 0-res;
}