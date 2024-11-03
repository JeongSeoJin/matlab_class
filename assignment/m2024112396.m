% Homework 7 정서진(2024112396)

%% problem 1
clear; close all; clc;
fprintf("[Prob 1]\n")

t = 0:1:7;
v = [0 14 39 69 95 114 129 139];

distance = trapz(t, v)

pause;
%% problem 2
clear; close all; clc;
fprintf("[Prob 2]\n")

b = 5;

x_prime = @(t)(-2*b*sin(t)+2*b*sin(2*t));
y_prime = @(t)(2*b*cos(t)-2*b*cos(2*t));

fplot(x_prime, y_prime)
func = @(t)sqrt(x_prime(t).^2 + y_prime(t).^2)
length = integral(func, 0, 2*pi);
fprintf("length of the curve is %f", length)

pause;
%% problem 3
clear; close all; clc;
fprintf("[Prob 3]\n")

s = @(t) sin(t.^2);
c = @(t) cos(t.^2);
S = []
C = []
x = 0:0.05:4
j = 1
for i = 0:0.05:4
    S(j) = integral(s, 0, i);
    C(j) = integral(c, 0, i);
    j = j + 1;
end

plot(x, S)

hold on
plot(x, C, '-')

legend("S(x)","C(x)");
xlabel("x");
ylabel("Fresnel Integral");

figure(2);
plot(C, S);
xlabel('C(x)');
ylabel('S(x)');

pause;

%% problem 4
clear; close all; clc;
fprintf("[Prob 4]\n")

%(a)

dvdt = @(t, v)-0.0035*v.^2-3;

[t, v] = ode45(dvdt, [0:1:13], 83.3333); 

subplot(2, 1, 1);
plot(t, v);
xlabel("Time (s)")
ylabel("Velocity (m/s)")
grid on;
hold on;

%(b)

x = []
for i=2:1:13
    x(i) = trapz(t(1:i), v(1:i));
end
x = x';

subplot(2, 1, 2);
plot(1:13, x);
xlabel("Time (s)")
ylabel("Distance (m)")
hold on;
grid on;

pause;