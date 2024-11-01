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
func = @(v)-1 ./ (3.5*10^3.*v.^2 + 3);

t = integral(func, 83.33333333, 0)

dvdt = @(v, t)-0.0035.*v.^2-3;
[v, t] = ode45(dvdt, [0, 10000], 83.3333);
plot(v, t)
%(b)


%(c)
pause;