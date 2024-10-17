disp("[Prob 2]")

% x와 y 범위 설정
x = -1:0.1:3;
y = -3:0.1:1;

% NaN 값 피하기
y = y + (y == 0) * eps;
x = x + (x == 0) * eps;

% Meshgrid 생성
[X, Y] = meshgrid(x, y);

% 함수 정의
z1 = sin(X.*Y) ./ (X.*Y) + 2.5;
z2 = 0.5.*X + 0.8.*Y + pi;

subplot(1, 2, 1);
surf(X, Y, z1, 'EdgeColor', 'none');
hold on;
surf(X, Y, z2, 'EdgeColor','k')
hold on
contour(X, Y, z1, 9);
hold on

title('3D plots of z_1(x, y) and z_2(x, y)');
xlabel('x'); ylabel('y'); zlabel('z');
view([50 20]);
grid on;

set(gca,'DataAspectRatio',[1 1 1])

subplot(1, 2, 2);
Z = NaN(size(X));  % NaN으로 기본 설정
Z(z1 >= z2) = z1(z1 >= z2);  % z1 >= z2인 부분은 z1 값으로 설정
Z(z1 < z2) = z2(z1 < z2);    % z1 < z2인 부분은 z2 값으로 설정

surf(X, Y, Z, 'EdgeColor', 'none');
hold on
contour(X, Y, Z, 9);
title('Union of upper surfaces');
xlabel('x'); ylabel('y'); zlabel('z');
view([50 20]);
grid on;

set(gca,'DataAspectRatio',[1 1 1])


pause



