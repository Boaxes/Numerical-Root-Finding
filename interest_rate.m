% Solves for the semiannual interest rate r satisfying
%
%     1000 * (1 + r)^20 + 2000 * (1 + r)^14 = 5000
%
% via the bisection method on the bracket [0, 0.05].
%
% This corresponds to: a $1000 investment now plus a $2000 investment
% three years from now accumulating to $5000 ten years from now,
% compounded semiannually.

f   = @(x) 1000 * (1 + x).^20 + 2000 * (1 + x).^14 - 5000;
a   = 0;
b   = 0.05;
TOL = 1e-5;

bisectionmethod(f, a, b, TOL);
