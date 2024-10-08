% 2023 midterm 2024112396(정서진)

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 1]\n");

% x = [1 3 5 7 9];
% y = [-2 0.5 3 5.5 8];
x = 1:2:9; % this way
y = -2:2.5:8; % this way
z = (x.^(0.5) .* (y.^2 - x .* y).^2) ./ (x + 2.*y)

pause

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 2]\n");

% theta = [5/6*pi 4/6*pi 3/6*pi 2/6*pi pi/6];
theta = 5/6:-1/6:1/6
theta = pi * theta; % this way
f = sin(2 .* theta) .* cos(4.*theta).^2 + 1./tan(theta)

pause

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 3]\n");

A = [1.5 * eye(3, 3) [-ones(2); zeros(1,2)] 2*ones(3,1)]
% eye : 대각선 방향으로 1 나열 : (i, j) 가능
% ones : 1로 구성된 행렬 : (i, j) 가능
% zeros : 0으로 구성된 행렬 : (i, j) 가능

pause

fprintf("[Prob 4]\n");

% 가우스 소거법 행렬을 통해서 표현하는 방식 암기

A = [4 0 -3 1; 0 2 1 0; 0 7 0 -4; 2 0 -2 2];
B = [-5 -2 1 1]';

x = A\B

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 5]\n");

x = -2:0.1:2;
x = x + (x==0) * eps; % x = 0 에서 함수가 부정형일 때 사용하는 방식
y = 1:0.1:5;
[X, Y] = meshgrid(x, y);

Z = 1 ./ exp(2./Y) + sin(X .* Y)./(X .* y);

indx = X + 3 == Y;

subplot(1, 2, 2)
mesh(X, Y, Z)
hold on
plot3(X(indx), Y(indx), Z(indx), 'r--') % 표면 위에line을 plot하는 방식
view([25, 65]) % view 함수 : 카메라 위치? 라고 이해하면 좋을듯
title('3D mesh plot of z(x, y) with y = x + 3');
xlabel('x');
ylabel('y');
zlabel('z');
% ??? : 곡면 위에 3차원 선을 어떻게 그리는가..?

subplot(1, 2, 1)
surface(X, Y, Z, 'EdgeColor','none')
title('3D surface plot of z(x, y)');
xlabel('x');
ylabel('y');
zlabel('z');
view([25, 65])
grid on

pause

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 5]\n")

clear; clc; close all;

%step1
n = input("please input the number of value : ");
coord = rand(n, 2);

%step2
x = coord(2:n, 1);
y = coord(2:n, 2);

xt = coord(1:n, 1);
yt = coord(1:n, 2);

x1 = [coord(1, 1)];
y1 = [coord(1, 2)];

plot(x1, y1, 'square');
hold on
plot(x, y, 'o');
xlim([0, 1])
ylim([0, 1])
hold on
grid on
set (gca,'DataAspectRatio',[1 1 1])
%step3
d_vec = [];

for(i = 2:n)
    d = sqrt((xt(i) - x1)^2 + (yt(i) - y1)^2);
    d_vec(i-1) = d;
end

% disp(d_vec)


%step4

% for(i = 1:n-1)
%     if d_vec(i) == max(d_vec, [], 'all')
%         max_val = i;
%     elseif d_vec(i) == min(d_vec, [], 'all')
%         min_val = i;
%     end
% end

[d_max, max_val] = max(d_vec);
[d_min, min_val] = min(d_vec);

X_max = [x1, xt(max_val+1)];
X_min = [x1, xt(min_val+1)];
Y_max = [y1, yt(max_val+1)];
Y_min = [y1, yt(min_val+1)];

%step5

plot_option = input("[1 2 3] : ");


switch (plot_option)
    case 1
        hold on
        plot(X_max, Y_max, 'r-')
    case 2
        hold on
        plot(X_min, Y_min, 'b-')
    case 3
        hold on
        plot(X_min, Y_min, 'b')
        hold on
        plot(X_max, Y_max, 'r-')
end


pause