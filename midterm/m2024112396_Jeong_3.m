disp("[Prob 3-(1)]")

clc; clear; close all;


X = [-1, -1; 1 -1; 1 1];
x0 = [X(:, 1)' X(1,1)']; 
y0 = [X(:, 2)' X(1, 2)'];

plot(x0, y0, 'b--');
grid on
axis equal
hold on
theta = input("input theta : ");
T = [cosd(theta) -sind(theta) ; sind(theta) cosd(theta)];

x_rotated = X * T;

x1 = [x_rotated(:, 1)' x_rotated(1,1)'];
y1 = [x_rotated(:, 2)' x_rotated(1, 2)'];

plot(x1, y1, 'r')

pause

disp("[Prob 3-(2)]")

clc; clear; close all;

pause