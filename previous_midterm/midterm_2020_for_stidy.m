%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf("[Prob 1]\n")

((sqrt(67)+2.2) * sin(2.54))/(24.4^3 - 10.2^2)
(1.4 + tand(27)) / (3*exp(1.7) + log(24))

x = 1:1:5;
y = 3:3:15;

z3 = y.*cos(x.^2+y.^2) - sqrt(x.^3/(y-x))

pause

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf("[Prob 2]\n")

A = [-eye(3) [3*ones(2, 3); zeros(1,3)]]

pause

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf("[Prob 3]\n")

A = [1 -1 1 -1; 1 1 1  1; 1 2 4 8; 1 4 16 64];
B = [1; 0; -1; 0];

sol = A\B

x = -2:0.1:5;
y = sol(1) + sol(2) .* x + sol(3) .* x.^2 + sol(4) .* x.^3;

plot(x, y, 'r');

grid on
title("graph of y(x)")
xlabel('x'); ylabel('y');
legend("cubic polynominal function")

pause

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf("[Prob 4]\n")

A = rand(5);
summation = zeros(1, 25);
for i = 1:25
    if (A(i) > 0.25 & A(i) < 0.75)
        summation(i) = A(i);
    end
end

disp("if statement")
sum(summation)
disp("using index")
indx = (A > 0.25 & A < 0.75);
sum2 = summation(indx);
sum(sum2)

pause

clear; clc; close all

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf("[Prob 5]\n")

x = -10:0.5:10;
y = -8:0.5:8;

x = x + (x==0) * eps;
y = y + (y==0) * eps;

[X,Y] = meshgrid(x, y);

Z = (Y.^2 .* sin(X)) ./ x;

indx = (Z>20 & (Z<40));

disp("number os points is %d", sum(sum(indx)))

subplot(1, 2, 1);
mesh(X, Y, Z);
view([30, 20])
title("Graph using mesh function")

subplot(1,2,2)
surf(X, Y, Z, EdgeColor="none")
view([30, 20])
title("Graph using surf function")

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf("[Prob 6]\n")

x0 = -1.5:0.01:2;
y0 = -2 + 5.*x0 + 2.*x0.^2 -3.*x0.^3;

plot(x0, y0, 'k')
hold on
grid on

for i = 1:3
    x = input("input value (-1.5<x<2) : ");
    y = -2 + 5.*x + 2.*x.^2 -3.*x.^3;
    if (x < -1.5 | x > 2)
        error("please write right value")
    elseif y >= 0
        plot(x, y, 'ro')
    else 
        plot(x, y, 'bo')
    end
end


plot(x, y)