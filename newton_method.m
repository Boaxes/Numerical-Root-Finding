% Approximates the root of
%
%     f(x) = exp(sin(x)^3) + x^6 - 2*x^4 - x^3 - 1
%
% on [1, 2] using Newton's method with initial guess x_0 = 2.
%
% Stops when |f(x_n)| < 1e-8. Prints, at each iteration, the current
% estimate x_i, the step size e_i = |x_i - x_{i-1}|, and the ratio
% e_i / e_{i-1}^2 (an empirical check on quadratic convergence).

% Function and its derivative
f   = @(x) exp(sin(x).^3) + x.^6 - 2*x.^4 - x.^3 - 1;
f_d = @(x) 3*cos(x).*sin(x).^2.*exp(sin(x).^3) + 6*x.^5 - 8*x.^3 - 3*x.^2;

tol        = 1e-8;
iter       = 0;
x_prev     = 2;     % initial guess
error_prev = NaN;
e          = Inf;

fprintf('%-10s %-13s %-13s %-13s\n', 'Iteration', 'xi', 'ei', 'ei/(ei-1)^2');

while abs(f(x_prev)) >= tol
    iter   = iter + 1;
    x_next = x_prev - f(x_prev) / f_d(x_prev);
    e      = abs(x_next - x_prev);

    if iter == 1
        fprintf('%-10d %13.9f %13.9f %13s\n', iter, x_next, e, 'N/A');
    else
        fprintf('%-10d %13.9f %13.9f %13.9f\n', iter, x_next, e, e / (error_prev^2));
    end

    error_prev = e;
    x_prev     = x_next;
end
