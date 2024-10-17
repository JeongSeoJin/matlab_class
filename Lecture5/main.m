clear; clc;
global a b
a = 2;
b = 3;
x = [ 1 2 3 4 ]';
% [y, num] = chp6one(x);
y = chp6one(x);

disp(y)

y1 = @(x)x.^2+1;
y1(x)
x2p1(x)