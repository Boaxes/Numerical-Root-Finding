% Plots f(x) = ln(x) against its 3rd-degree Taylor polynomial centered at
% x = 1, with (1.1, ln(1.1)) and (1.1, P_3(1.1)) marked.
%
% P_3(x) = (x - 1) - (x - 1)^2 / 2 + (x - 1)^3 / 3
%
% The 3rd-degree polynomial is the lowest degree whose error bound on
% [0.8, 1.2] stays below 1e-4.

% Define the function and polynomial
f  = @(x) log(x);
Pk = @(x) (x - 1) - ((x - 1).^2) / 2 + ((x - 1).^3) / 3;

% Define the x range
x = linspace(0.8, 1.2, 100);

% Compute function values
y_f  = f(x);
y_Pk = Pk(x);

% Plot the curves
figure;
plot(x, y_f,  'b',   'LineWidth', 2); hold on;
plot(x, y_Pk, 'r--', 'LineWidth', 2);

% Mark the points (1.1, ln(1.1)) and (1.1, P_k(1.1))
x_mark    = 1.1;
y_f_mark  = f(x_mark);
y_Pk_mark = Pk(x_mark);
plot(x_mark, y_f_mark,  'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b');
plot(x_mark, y_Pk_mark, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');

% Labels and title
xlabel('x');
ylabel('Function Value');
title('Plot of f(x) = ln(x) and P_k(x)');
legend('ln(x)', 'P_k(x)', 'ln(1.1)', 'P_k(1.1)', 'Location', 'NorthWest');
grid on;
hold off;
