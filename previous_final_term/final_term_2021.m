%% problem 1
%(2)
func = @(x)x.*exp(-x.^2);
q = integral(func, 0, Inf)

%(3)
func2 = @(x)func(x)-0.1
fplot(func2);
x1 = fzero(func2, 0)
x2 = fzero(func2, 2)

%(4)
fx = [3.2 0.5 0 0]; gx = [0 -0.6 5.52 -2.1];
r = roots(fx - gx);

%% problem 2
x = [ 1.10 2.47 5.12 9.02 15.20 16.81];
y = [0.381 0.299 0.221 0.154 0.099 0.088];

figure(1);
subplot(1, 2, 1);
plot(x, log(y), 'o:')

subplot(1,2,2);
plot(x, 1./y, 'o:')

figure(2);
% p1
p1 = polyfit(x, log(y), 1);
m1 = p1(1)
b1 = exp(p1(2))
xp1 = 1.1:0.1:16.81;
yp1 = b1*exp(m1*xp1);
y1 = b1*exp(m1*x);
% p2
p2 = polyfit(x, 1./y, 1);
m2 = p2(1)
b2 = p2(2)
xp2 = 1.1:0.1:16.81;
yp2 = 1./(m2*xp2 + b2);
y2 = 1./(m2*x+b2);

plot(x, y, 'o', xp1, yp1, xp2, yp2);
hold on
plot(x, y1, 's:', x, y2, '^:')

norm(y0 - y1)
norm(y0 - y2)

%% problem 3
clear; clc; close all;
p = [1 -1 -1 -1];
xl = 0; xu = 2;
a = 2;
p_pri = polyder(p);
specif = p_pri - [0 0 a];
x0_tempo = roots(specif);
 
for i=1:2
    if x0_tempo(i) < xu & x0_tempo(i) > xl
        x0 = x0_tempo(i);
    end
end

fx0 = polyval(p, x0);

x = xl:0.1:xu;
y = polyval(p, x);
plot(x, y, x0, fx0, 'o')
hold on

tangent_line = a*(x-x0) + fx0;
plot(x, tangent_line)
