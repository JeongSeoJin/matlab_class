%% problem 1
clear; clc; close all;
f1 = [2 0 -3 -9 11 -8 4];
f2 = [5 0 7 -10];

polyadd(f1, f2, 'add');
polyadd(f1, f2, 'sub');

%% problem 2
clear; close all; clc;
C = 254;
w = 1:2:13;
H = [22 51 127 202 227 248 252];

y = C./H-1;
p = polyfit(w, log(y), 1);
A = exp(p(2))
B = -p(1)

xt = linspace(1, 13, 100);
yt = C./(1+A*exp(-B*xt));

plot(w, H, 'o', xt, yt);
hold on

%% problem 3
%(a)
p2 = polyfit(w, H, 3);
wp = linspace(1, 13, 100);
hp = polyval(p2, wp);
plot(w, H, 'o', wp, hp);
legend("3 order")
hold on

%(b)
hlin = interp1(w, H, wp, "linear");
hspl = interp1(w, H, wp, "spline");
plot(w, H, 'o', wp, hlin);
legend("linear")
hold on
plot(w, H, 'o', wp, hspl);
legend("spline")

%% problem 4
clear; clc; close all;

b=5;
x = @(t)2*b*cos(t) - b*cos(2*t);
y = @(t)2*b*sin(t) - b*sin(2*t);
t = linspace(0, 2*pi, 100);

plot(x(t), y(t));
hold on

x_pri = @(t)-2*b*sin(t) + 2*b*sin(2*t);
y_pri = @(t)2*b*cos(t) - 2*b*cos(2*t);

func = sqrt(x_pri(t).^2 + y_pri(t).^2);

len = trapz(t, func);