% Problem 2. Bisection method M-file. Solves f(x) = 0 on [a, b] satisfying
% |x_N - r| < TOL. Outputs step, a, b, c, f(c) at each iteration.

function bisectionmethod(f, a, b, TOL)
    % Check input validity
    if f(a) * f(b) >= 0
        error('f(a) and f(b) must have opposite signs. No root guaranteed.');
    end
    % Compute iterations
    N = ceil(log2((b - a) / TOL));

    fprintf('Step,       a,             b,             c,             f(c)\n');

    for k = 1:N
        c = (a + b) / 2; % Midpoint
        fc = f(c);
        % Print the current iteration details
        fprintf('%2d, %12.7f, %12.7f, %12.7f, %12.7f\n', k, a, b, c, fc);
        % Check if the root is found within tolerance
        if abs(fc) < TOL
            fprintf('Root found at x = %.7f after %d iterations.\n', c, k);
            return;
        end
        % Update interval for the next iteration
        if f(a) * fc < 0
            b = c;
        else
            a = c;
        end
    end

    fprintf('Final approximation after %d iterations: x = %.7f\n', N, c);
end
