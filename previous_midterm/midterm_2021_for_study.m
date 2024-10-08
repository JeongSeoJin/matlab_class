%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("Prob 1-(4)")

A = [2 4 4 -1; 1 2 -3 -3; 7 2 4 2; 5 -2 0 1];
B = [-2; 1; 4; 2;]
x = A\B

pause

clear; clc; close all;

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 2]\n")

x = -4:0.1:4;
y = -4:0.1:4;
x = x + (x==0) * eps;
y = y + (y==0) * eps;

[X, Y] = meshgrid(x, y);

Z = (exp(X) .* sin(X .* Y)) ./ (X.*Y);

indx = X > 3;

subplot(1, 2, 1);
surface(X, Y, Z, 'EdgeColor','none');
view([-25, 26]);
grid on;
title("Graph using surf function")
xlabel('x'); ylabel('y'); zlabel('z');

subplot(1, 2, 2);
surface(X, Y, Z, 'EdgeColor','none');
hold on
plot3(X(indx), Y(indx), Z(indx),'r.')
view([-25, 26]);
grid on;
title("graph with the points 'x>3'")
xlabel('x'); ylabel('y'); zlabel('z');

pause

clear; clc; close all;

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 3]\n")

n = 10;
x = zeros(1, n);
y = zeros(1, n);

x(1) = 0;
y(1) = 0;

q = zeros(1, n);

for i = 1:n
    q(i) = rand(1);
    if q(i) >= 0.5
        x(i+1) = x(i) + 1;
        y(i+1) = y(i);
        
    else 
        x(i+1) = x(i);
        y(i+1) = y(i) + 1;
    end
end

plot(x(q>=0.5), y(q>=0.5), 'b>');
hold on
plot(x(q<0.5), y(q<0.5), 'r^');
grid on
set(gca, 'dataaspectratio', [1, 1, 1])


pause