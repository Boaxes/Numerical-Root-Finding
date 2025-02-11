function bisectionmethod(f, a, b, TOL)
% BISECTIONMETHOD  Approximate a root of f on [a, b] to within TOL.
%
%   bisectionmethod(f, a, b, TOL) prints, at each step, the iteration
%   number k, the current left and right endpoints a and b, the midpoint
%   c, and f(c). It then prints the final approximation.
%
%   Requires f(a) and f(b) to have opposite signs (Intermediate Value
%   Theorem). The number of iterations is chosen so that the bracket
%   width drops below TOL.

    % Check input validity
    if f(a) * f(b) >= 0
        error('f(a) and f(b) must have opposite signs. No root guaranteed.');
    end

    % Number of iterations needed to shrink [a, b] below TOL
    N = ceil(log2((b - a) / TOL));

    fprintf('Step,       a,             b,             c,             f(c)\n');

    for k = 1:N
        c  = (a + b) / 2;
        fc = f(c);

        fprintf('%2d, %12.7f, %12.7f, %12.7f, %12.7f\n', k, a, b, c, fc);

        % Early exit if we already meet the tolerance
        if abs(fc) < TOL
            fprintf('Root found at x = %.7f after %d iterations.\n', c, k);
            return;
        end

        % Update bracket
        if f(a) * fc < 0
            b = c;
        else
            a = c;
        end
    end

    fprintf('Final approximation after %d iterations: x = %.7f\n', N, c);
end
