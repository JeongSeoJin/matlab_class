%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf("[Prob 1 ]\n")
x = 2:1:6
y = -3:0.5:-1
z = (x .* y .* (x.*y + 9).^0.25) ./ (y.^2 + 2.*y - 1)
pause  % 결과 확인 후 다음 문제 진행

theta = 15:15:75 * pi / 180;  % 각도를 라디안으로 변환
f = cos((1 ./ theta) .* (tan(theta)).^0.5) + (1 ./ sin(theta))
pause

A = [-2*eye(3)+[[0;-3;-4] [zeros(3,2)]] ones(3, 1) linspace(1, 1, 3)']

pause

A = [1 -1 1 -1; 4 1 0 0 ; -2 0 0 -1; 0 0 -4 3];
B = [-1; 6; -1; 3];
x = A\B
pause


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 2]\n")
% 문제 2번: z(x, y) 함수의 3차원 그래프 그리기
x = 1:0.1:5;  % x 범위
y = -3:0.1:1;  % y 범위

x = x + (x == 0) * eps;
y = y + (y == 0) * eps;

[X, Y] = meshgrid(x, y);

% z(x, y) 함수 정의
Z = (sin(2.*X.*Y) ./ (X.*Y)) + log(1./X) - pi;

% 1. Surface 그래프와 Contour 그리기
subplot(1, 3, 1);  % 첫 번째 그래프: Surface & Contour
surf(X, Y, Z, 'EdgeColor', 'none');
hold on;
contour(X, Y, Z, 7, 'black');
view([30 20]);
title('3D plots of z(x,y)');
set(gca, 'DataAspectRatio', [1 1 1])

% 2. 두 번째 그래프: 평면 투영
subplot(1, 3, 2);  % 두 번째 그래프: Contour 투영
surf(X, Y, Z, 'EdgeColor', 'none');
hold on;
contour(X, Y, Z, 7,'black');
view([0 90]);
title('xy plane view');
set(gca, 'DataAspectRatio', [1 1 1])

% 3. 세 번째 그래프: 조건 만족하는 영역
indx = (Z < -3.75) & (Z > -4.25);
subplot(1, 3, 3);  % 세 번째 그래프
plot(X(indx), Y(indx), 'r.');
title('-4.25 < z(x,y) < 3.75');

set(gca, 'DataAspectRatio', [1 1 1])
pause


%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 문제 3번
clear; clc; close all;

% Step 1: 원 그리기
theta = 0:1:360;  % 0도에서 360도까지 1도 간격의 벡터 생성
r = input("radius : "); 
x = r * cosd(theta);  % 극좌표를 직교좌표로 변환
y = r * sind(theta);

plot(x, y);  % 원 그래프 그리기
axis equal;  % 축 비율 같게 설정
xlim([-1-r, r+1]);
ylim([-1-r, r+1]);
title('');

% Step 2: 임의의 점 생성 및 색상 조건
hold on;

n = input("number : ");
theta2 = (rand(1, n) * 360);

arr_theta = zeros(1, 5)
theta2 = sort(theta2)

for i = 1:5
    if n == 5
        if i <= 3
            arr_theta(2*i-1) = theta2(i);
        elseif i >= 4
            arr_theta(2*i-6) = theta2(i);
        end
    end
end
% arr_theta(6) = theta(1);

x2 = r * cosd(theta2);
y2 = r * sind(theta2);


for i = 1:n
    if theta2(i) >= 0 && theta2(i) <= 90
        plot(x2(i), y2(i), 'rs')
    elseif theta2(i) >= 90 && theta2(i) <= 180
        plot(x2(i), y2(i), 'bo')
    else
        plot(x2(i), y2(i), 'k*')
    end
end

xs = r * cosd(arr_theta);
ys = r * sind(arr_theta);

plot(xs, ys);