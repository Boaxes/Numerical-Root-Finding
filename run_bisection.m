% Applies bisectionmethod to problems 2(a), 2(b), and 2(c).
% Problem 2(b) produces an expected error: f(a) and f(b) have the same
% sign on [0, 1] so no root is guaranteed there.

TOL = 1e-6;

%% (A)
fprintf('\n--- Problem (A) ---\n');
f = @(x) 230*x.^4 + 18*x.^3 + 9*x.^2 - 221*x - 9;
a = 0;                  % Left endpoint
b = 1;                  % Right endpoint
bisectionmethod(f, a, b, TOL);

%% (B)
fprintf('\n--- Problem (B) ---\n');
f = @(x) 1 + log(1 + x.^2);
a = 0;                  % Left endpoint
b = 1;                  % Right endpoint
try
    bisectionmethod(f, a, b, TOL);
catch ME
    fprintf('%s\n', ME.message);
end

%% (C)
fprintf('\n--- Problem (C) ---\n');
f = @(x) exp(x) + 2.^(-x) + 2*cos(x) - 6;
a = 1;                  % Left endpoint
b = 2;                  % Right endpoint
bisectionmethod(f, a, b, TOL);
