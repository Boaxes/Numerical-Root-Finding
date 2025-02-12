% Driver script that runs `bisectionmethod` on the three assigned test
% problems. Problem (B) intentionally triggers the input-validity error
% because f(0) > 0 and f(1) > 0, so no sign change is present on [0, 1].

TOL = 1e-6;

%% (A) 230x^4 + 18x^3 + 9x^2 - 221x - 9 on [0, 1]
fprintf('\n--- Problem (A) ---\n');
f = @(x) 230*x.^4 + 18*x.^3 + 9*x.^2 - 221*x - 9;
a = 0;
b = 1;
bisectionmethod(f, a, b, TOL);

%% (B) 1 + ln(1 + x^2) on [0, 1]
fprintf('\n--- Problem (B) ---\n');
f = @(x) 1 + log(1 + x.^2);
a = 0;
b = 1;
try
    bisectionmethod(f, a, b, TOL);
catch ME
    fprintf('%s\n', ME.message);
end

%% (C) e^x + 2^(-x) + 2cos(x) - 6 on [1, 2]
fprintf('\n--- Problem (C) ---\n');
f = @(x) exp(x) + 2.^(-x) + 2*cos(x) - 6;
a = 1;
b = 2;
bisectionmethod(f, a, b, TOL);
