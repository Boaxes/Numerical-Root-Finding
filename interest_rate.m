% Problem 3. At what interest rate convertible semiannually would an
% investment of $1000 immediately and $2000 three years from now accumulate
% to $5000 ten years from now? Let r be the semiannual interest rate.
% Solve: 1000*(1+r)^20 + 2000*(1+r)^14 = 5000. a = 0, b = 0.05, TOL = 1e-5.

f = @(x) 1000*(1 + x).^20 + 2000*(1 + x).^14 - 5000;
a = 0;                  % Left endpoint
b = 0.05;               % Right endpoint
TOL = 1e-5;             % Tolerance

bisectionmethod(f, a, b, TOL);
