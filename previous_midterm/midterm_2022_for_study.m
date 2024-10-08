%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 1-(1)]")

x = [1 2 3 4 5];
y = [-10 -8 -6 -4 -2];

z = (x - x.*y).^2/(4.*x - 2.*y)

pause

clear; clc;

%% %%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 1-(2)]")

x = 0.8:-0.3:-0.4;
y = -1:0.5:1;

z = log(abs(x) + abs(y)) - asin((x + y)./ (x.^2 + y.^2))


pause

clear; clc;

%% %%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 1-(3)]")

A = [[-ones(2, 2); zeros(1, 2)] -eye(3) 2 * ones(3,1)]

pause

clear; clc;

%% %%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 1-(4)]")

A = [2 -4 0 0; 0 1 -2 0; 0 6 0 4; 0 0 -2 2]
B = [2 -1 5 1]

x = A/B

pause

clear; clc;

%% %%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 2]")

x = 0:0.05:1;
y = 0:0.05:1;

x = x + (x==0) * eps;
y = y + (y==0) * eps;

[X, Y] = meshgrid(x, y);
Z = (1 - sin(pi^2 .* X .*Y) ./ (pi^2 .* X .* Y));

indx = X < Y;

subplot(1, 2, 2);
surface(X, Y, Z, 'EdgeColor','none');
hold on
plot3(X(indx), Y(indx), Z(indx), 'r.');
title("3D plot of z(x, y) with x<y")
xlabel('x'); ylabel('y'); zlabel('z');
grid on
hold on
view([35, 50])

subplot(1, 2, 1);
surface(X, Y, Z, 'EdgeColor','none');
view([35, 50])
title("3D plot of z(x, y)")
xlabel('x'); ylabel('y'); zlabel('z');
grid on


view([35, 50])
pause

clear; clc; close all;


%% %%%%%%%%%%%%%%%%%%

fprintf("[Prob 3]")

%step1
xp = 0:0.1:40;
f1 = -0.1 .* xp .^2 + 6.*xp -77;
f2 = 0.08 .* xp.^2 -1.9.*xp + 19;

plot(xp, f1, 'b')
hold on
plot(xp, f2, 'r')
legend("f1(x), f2(x)")
xlim([0,40]);
ylim([0,20]);
hold on
%step2
N = 100;
x = zeros(1, N);
y = zeros(1, N);
y(1) = 11;
x(1) = 0;
%step3
for i = 1:N
    x(i+1) = x(i)+1;
    y(i+1) = y(i);
    % fprintf("%.3f %.3f %.3f\n",xp(i), f1(i), y(i))
    if (y(i+1) <= -0.1*x(i+1)^2 + 6*x(i+1) -77)
        x(i+1) = x(i);
        y(i+1) = y(i) + 1;
    elseif (y(i+1) >=0.08 * x(i+1)^2 -1.9*x(i+1) + 19)
        x(i+1) = x(i);
        y(i+1) = y(i) - 1;
    end

end

plot(x,y, 'o:', 'Color','red')
grid on
pause
% clear; clc; close all;

