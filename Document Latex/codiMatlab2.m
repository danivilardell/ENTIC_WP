clear;
x = [ 0; 0.05;  0.1; 0.15; 0.2; 0.25; 0.3; 0.35; 0.4; 0.5];
y = [665; 724; 757; 790; 820; 849; 882; 893; 895; 892];

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
title('Arduino output respect to Preassure input')
plot(xFit, yFit, 'b-', 'LineWidth', 1);
