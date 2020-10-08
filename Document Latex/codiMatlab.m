clear;
x = [ 0; 0.1;  0.15; 0.2; 0.25; 0.3; 0.35; 0.4; 0.45; 0.5];
y = [1.96; 1.97; 1.98; 1.99; 1.995; 2.00; 2.003; 2.01; 2.013; 2.019]

plot(x, y, 'ro', 'MarkerSize', 10);
grid on;
% Get the fit
coeffs = polyfit(x, y, 1);
% Get the x values for the fit at higher resolution.
xFit = linspace(x(1), x(end), 300);
% Get the estimated y values
yFit = polyval(coeffs, xFit);
% Plot them as a line.
hold on;
xlabel('[V]')
ylabel('[Atm]')
title('Voltage output respect to Preassure input')
plot(xFit, yFit, 'b-', 'LineWidth', 1);
