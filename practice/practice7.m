% Practice 7 정서진(2024112396)

%% problem 1
clear; close all; clc;

fprintf("[Prob 1]\n")

fx = @(x)(x.*exp(-x).*cos(2.*x)-0.05);

%1 plotting gragh
fplot(fx,[0, 5])

%2 finding solution
x1 = fzero(fx, 0);
x2 = fzero(fx, 1);
x3 = fzero(fx, 3);
x4 = fzero(fx, 4);

fprintf('x1 = %f\n', x1)
fprintf('x1 = %f\n', x2)
fprintf('x1 = %f\n', x3)
fprintf('x1 = %f\n', x4)

%3 finding local max, min
[x_min, y_min] = fminbnd(fx, 0, 2);
[x_max, y_max] = fminbnd(@(x)-(x.*exp(-x).*cos(2.*x)-0.05), 0, 2);
[x2_min, y2_min] = fminbnd(fx, 2, 5);
[x2_max, y2_max] = fminbnd(@(x)-(x.*exp(-x).*cos(2.*x)-0.05), 2, 5);

y_max = -y_max;
y2_max = -y2_max;

fprintf('x_min = %f\n', x_min)
fprintf('y_min = %f\n', y_min)
fprintf('x_max = %f\n', x_max)
fprintf('y_max = %f\n', y_max)
fprintf('x2_min = %f\n', x2_min)
fprintf('y2_min = %f\n', y2_min)
fprintf('x2_max = %f\n', x2_max)
fprintf('y2_max = %f\n', y2_max)

pause;

%% problem 2
clear; close all; clc;

fprintf("[Prob 2]\n")

%(1)
q1 = integral(@(x)cos(x.^2), 0, sqrt(2*pi))

%(2)
q2 = integral2(@(x, y) x.*y.^2, 1, 3, 0, 1)

pause;

%% problem 3
clear; close all; clc;

fprintf("[Prob 3]\n")

%(1)
dydt = @(t, y)(y+sin(t))
[t1, y1] = ode45(dydt, [0:0.314:3.14], 10)

%(2)
yt = @(t)(-0.5*(cos(t)+sin(t) + 10.5*exp(t)))

fplot(yt, [0, 3.14])
hold on
plot(t1, y1, 'o')

pause;

%% Problem 4
clear; close all; clc;

fprintf("[Prob 4]\n")

%(1)
tspan = 0:1:20;
z0 = [1; 0];
odefun = @(t, z) [z(2); -z(1) + sin(5*t)];

%(2)
odefun = @(t, z) [z(2); -z(1) + sin(5*t)];

[t, z] = ode45(odefun, tspan, z0);

y_analytical = -(1/24)*sin(5*t) + (5/24)*sin(t) + cos(t);

figure;
plot(t, z(:,1), 'bo'); hold on;
plot(t, z(:,2), 'r*');
plot(t, y_analytical, 'b-', 'LineWidth', 1.5);

grid on;

pause;
