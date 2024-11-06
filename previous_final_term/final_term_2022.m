%% problem 1
clear; clc; close all;

%(1)
func = @(x)1./x.^2.*sin(x);
q = integral(func, -Inf, -0.1);
disp(q);

%(2) -> answer : 2EA
%way1
qwer = [2.2 -1.5 3.7 -6.1 -5];
aaa = roots(qwer)

%way2
func1 = @(x)2.2*x.^4-1.5*x.^3+3.7*x.^2-6.1*x -5;
fplot(func1);
fzero(func1, 0)
fzero(func1, 2)

%(3)
comparison = @(x)x.^2.*exp(-sqrt(x))-x.*sin(x)-1;
fplot(comparison, [0, 10])
x1 = fzero(comparison, 3)
x2 = fzero(comparison, 6)
x3 = fzero(comparison, 9)

%(4)
% Parameters
m = 2;             % Mass
k = 3;             % Stiffness
y0 = 1;            % Initial position
v0 = 1;            % Initial velocity
tspan = [0 15];    % Time range
f = @(t) cos(pi * t); % External force function

% Solve the ODE
[t, sol] = ode45(@(t, Y) springMassODE(t, Y, m, k, f), tspan, [y0, v0]);

% Extract position and velocity
y = sol(:, 1);     % Position y(t)
v = sol(:, 2);     % Velocity y'(t)

% Plot the results
figure(1);

% Position plot
subplot(2, 1, 1);
plot(t, y);
title('Position y(t)');
xlabel('Time t');
ylabel('Position y');
grid on;

% Velocity plot
subplot(2, 1, 2);
plot(t, v);
title('Velocity y''(t)');
xlabel('Time t');
ylabel('Velocity y''');
grid on;

%% problem 2
x = [2 3 5 8 9 11];
y = [0.50 0.91 1.91 6.58 10.12 23.29];

figure(2);
subplot(1,3,1);
plot(log(x), log(y), 'o:');
subplot(1,3,2);
plot(x, log(y), 'o:');
subplot(1,3,3);
plot(x, 1./y, 'o:');

mb = polyfit(x, log(y), 1)
m = mb(1);
b = exp(mb(2));

figure(3);
xp = linspace(2, 11, 50);
yp = b*exp(m*xp);

plot(x, y, 'o', xp, yp);

%% problem 3
clear; clc; close all;
fx = 