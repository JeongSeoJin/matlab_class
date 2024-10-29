% Homework6 정서진(2024112396)

clear;clc;close all;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('[Prob 1]')

[fa_x,fa_y,fa_w] = maxormin(3,-7,14);
[fb_x,fb_y,fb_w] = maxormin(-5,-11,15);

a = [fa_x,fa_y,fa_w];
b = [fb_x,fb_y,fb_w];
disp('(a)')
disp(a)
disp('(b)')
disp(b)

pause;
clear; clc;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('[Prob 2]')

disp('(a)')
y2 = [1 -2];
x2 = 2.*conv(y2,y2)+[0 0 3];
d_first = conv((x2-[0 0 3]),(x2-[0 0 3]));
d_second = conv([1 -4],[1 -4]);
d_double = d_first + [0 0 d_second(1),d_second(2),d_second(3)];%d^2
disp(d_double)

disp('(b)')
disp(' ')
y_Val = linspace(0,4,100);
x_Val = polyval(d_double,y_Val);
plot(x_Val,y_Val);
grid on;
pause;
close all;

disp('(c)')
dVal = 3;
d_equal_3 = d_double - [0 0 0 0 dVal^2];
Qy = roots(d_equal_3);
Qx1 = polyval(x2, Qy(1));
Qx2 = polyval(x2, Qy(4));
Qx = [Qx1, Qx2];

fprintf('Q1_point = (%.4f, %.4f)\nQ2_point = (%.4f, %.4f)\n\n', Qx(1), Qy(1), Qx(2), Qy(4))

disp('(d)')
dp = polyder(d_double);
Qy_min = roots(dp);
Qx_min = polyval(x2, Qy_min(1));
d_min = polyval(d_double, Qy_min(1));

fprintf('Q_min_point = (%.4f, %.4f)\n', Qy_min(1), Qx_min)
fprintf('d_min = %.4f\n', d_min)
pause;
clear; clc;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('[Prob 3]')

x3 = 5:5:50;
y3 = [15 25 32 33 37 35 38 39 41 42];

X = 1./x3;
Y = 1./y3;

fitting = polyfit(X,Y,1);

a = 1/fitting(2);
b = a*fitting(1);

x_last = linspace(0,100,1000);
y_last = a*x_last./(b+x_last);

plot(x3, y3, 'o')
hold on;
plot(x_last, y_last)

pch = interp1(x3, y3, 23, 'pchip');
lin = interp1(x3, y3, 23, 'linear');
spl = interp1(x3, y3, 23, 'spline');

fprintf('pchip  guess')
disp(pch)
fprintf('linear guess')
disp(lin)
fprintf('spline guess')
disp(spl)

pause;
close all;