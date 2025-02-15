# Numerical Root Finding (MATLAB)

**Quarter:** Winter 2025  

In this project we implemented Taylor polynomial approximation (a way to locally approximate a function using a polynomial), a general bisection method, and Newton's method for finding roots of equations. The bisection method works by repeatedly halving an interval known to contain a root until the answer is close enough. Newton's method speeds this up by using the derivative at each step to make smarter guesses.

## Contents

| File                | Description                                                                                                                                                                                              |
| ------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `taylor_plot.m`     | Plots ln(x) alongside its 3rd-degree Taylor polynomial (a local polynomial approximation that gets close to a function near a chosen point) for x in [0.8, 1.2], with (1.1, ln(1.1)) marked.            |
| `bisectionmethod.m` | Bisection method, a root-finding approach that repeatedly halves a bracket around a root until it is within a given tolerance, implemented as a reusable MATLAB function.                                 |
| `run_bisection.m`   | Runs bisectionmethod on the three assigned test functions.                                                                                                                                               |
| `interest_rate.m`   | Uses bisection to find the semiannual interest rate $r$ satisfying $1000(1+r)^{20} + 2000(1+r)^{14} = 5000$.                                                                                            |
| `newton_method.m`   | Newton's method, a root-finding technique that uses the derivative at each step to quickly zero in on a root, applied to $f(x) = e^{\sin^3 x} + x^6 - 2x^4 - x^3 - 1$ with initial guess $x_0 = 2$.    |

## Running

Each script can be run directly from MATLAB.

```matlab
>> taylor_plot
>> run_bisection
>> interest_rate
>> newton_method
```
