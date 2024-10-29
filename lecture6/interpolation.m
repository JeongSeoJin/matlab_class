clear; clc; close all;

x = 0:1.0:5;
y = [1.0 -0.6242 -1.4707 3.2406 -0.7366 -6.3717];
xi = 0:0.1:5;

yiLin = interp1(x,y,xi,'linear');
yiSpl = interp1(x,y,xi,'spline');
yiPch = interp1(x,y,xi,'pchip');
yfun = 1.5.^xi.*cos(2*xi);

subplot(1,3,1)
plot(x,y,'o',xi,yiLin,'-',xi,yfun,'-.');
xlabel('x'); ylabel('y')
subplot(1,3,2)
plot(x,y,'o',xi,yiSpl,'-',xi,yfun,'-.');
xlabel('x'); ylabel('y')
subplot(1,3,3)
plot(x,y,'o',xi,yiPch,'-',xi,yfun,'-.');
xlabel('x'); ylabel('y')