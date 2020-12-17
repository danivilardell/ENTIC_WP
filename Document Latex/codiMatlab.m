clear;
x = [ 0; 0.05;  0.1; 0.15; 0.2; 0.25; 0.3; 0.35; 0.4; 0.5];
y = [3.31; 3.51; 3.7; 3.85; 4.04; 4.2; 4.37; 4.4; 4.41; 4.4];

plot(x, y, 'ro', 'MarkerSize', 10);
grid on;
% Get the fit
coeffs = polyfit(x(1:7), y(1:7), 1);
% Get the x values for the fit at higher resolution.
xFit = linspace(x(1), x(7), 300);
% Get the estimated y values
yFit = polyval(coeffs, xFit);
% Plot them as a line.
hold on;
xlabel('[V]')
ylabel('[Atm]')
title('Voltage output respect to Preassure input')
plot(xFit, yFit, 'b-', 'LineWidth', 1);
