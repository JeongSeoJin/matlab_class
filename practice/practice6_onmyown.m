%% problem 1
clear; close all; clc;
f1 = [3 15 0 -10 -3 15 -40];
f2 = [3 0 -2 -6];
%(1)
f1val = polyval(f1, 0.5)
f2val = polyval(f2, 0.5)

%(2)
f3 = conv(f1, f2);
f3val = polyval(f3, 0.5)
comparison = f3val - f1val*f2val

%(3) ..?
[q, r] = deconv(f1, f2);

%(4)
[n, d] = polyder(f1, f2); % --> derivatice n/d of quotient of two polynomials f1/f2
% there exist functions named n, d
der_val = polyval(n, 1)/polyval(d, 1)

%(5)

%% problem 2
clear; close all; clc;
x = [0, 1, 2, 3];
y = [1, 2.3, 2.8, 3.4];
xi = 0:0.1:3;

%(1)
p2 = polyfit(x, y, 2)

a = p2(1);
b = p2(2);
c = p2(3);

xf = polyval(p2, 1.5)

%(2)
ylin = interp1(x, y, xi, 'linear');
ysp = interp1(x, y, xi, 'spline');
ypch = interp1(x, y, xi, 'pchip');

ylin_val = interp1(x, y, 1.5, 'linear');
ysp_val = interp1(x, y, 1.5, 'spline');
ypch_val = interp1(x, y, 1.5, 'pchip');

subplot(1, 3, 1);
plot(x, y, 'ro', xi, ylin, 'b', 1.5, ylin_val, 'k*');
hold on;

subplot(1, 3, 2);
plot(x, y, 'ro', xi, ysp, 'b', 1.5, ysp_val, 'k*');
hold on;

subplot(1, 3, 3);
plot(x, y, 'ro', xi, ypch, 'b', 1.5, ypch_val, 'k*');
hold on;

disp("values are")
disp(ylin_val);
disp(ysp_val);
disp(ypch_val);

%% Problem 3

m = 1000;
k = 5*10^6;
alp = k/(4*m*pi^2);

p1 = [-1 0 alp];
p2 = [-1 0 2*alp];
p3 = [alp^2 0 -2*alp^3];
p4 = conv(p2, p2) + [0 0 0 0 -alp^2];
p5 = conv(p1, p4);

p6 = p5 + [0 0 0 0 p3]

p6_roots = roots(p6)

%% Problem 4

a0 = [1 0];
a1 = [1 1.0];
a2 = conv(a0, a1);
a3 = [1 -0.4];
a4 = conv(a2, a3);
a5 = [1 -1.6];
a6 = conv(a4, a5)

x = -2:0.1:2;
y = polyval(a6, x);
plot(x, y);