%% problem 1
clear; clc; close all;
[x, y, w] = maxormin(3, -7, 14)
[x, y, w] = maxormin(-5, -11, 15)

%% problem 2
clear; close all; clc;
% yd = 0:0.1:4;
% x = @(y)2*(y-2).^2+3;
% xd = x(yd);
% d = sqrt((yd-4).^2 + (xd-3).^2);
% plot(yd, d)

%(a)
x = [2 -8 11]
d_square = [0 0 1 -8 16] + conv(x, x) -6*[0 0 x] + [0 0 0 0 9]

%(b)
y = 0:0.1:4;
d = sqrt(polyval(d_square, y));
plot(y, d)

%(c)
d3 = d_square - [0 0 0 0 3];
r = roots(d3)

%(d)
d_pri = polyder(d_square);
xmin = roots(d_pri)
dminimun = sqrt(polyval(d_square, xmin))

ymin = polyval(x, xmin);
fprintf("Q(%f, %f)\n", xmin(1), ymin(1))

%% problem 3
clear; close all; clc;
x = 5:5:50;
y = [15 25 32 33 37 35 38 39 41 42];

p = polyfit(1./x, 1./y, 1);
a = 1/p(2);
b = a*p(1);
xp = 5:0.1:50;
yfunc = @(x)a.*x./(b + x);
yp = yfunc(xp);

plot(x, y, 'o', xp, yp);
hold on
plot(23, yfunc(23), '*k');
fprintf("y at x = 23 is %f\n", yfunc(23))