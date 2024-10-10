fprintf("[ Prob 2 ]\n");


% 문제 1 코드
clear; clc; close all;

% x, y 범위 설정
x = -5:0.2:5; 
y = -5:0.2:5;

% NaN 값 피하기 (y = 1일 때)
y(y == 1) = 1 + eps;

% Meshgrid 생성
[X, Y] = meshgrid(x, y);

% 함수 정의
Z = (cos(X) .* sin(Y - 1)) ./ (Y - 1);

% subplot(1, 2, 1): surf 그래프 그리기
subplot(1, 2, 1);
surf(X, Y, Z, 'EdgeColor', 'none');
title('Graph using surf function');
xlabel('x'); ylabel('y'); zlabel('z(x, y)');
view([30 20]);
grid on;

% subplot(1, 2, 2): 특정 조건 만족하는 점 그리기
subplot(1, 2, 2);
surf(X, Y, Z, 'EdgeColor', 'none');
hold on;
condition = Z > 0.15;
plot3(X(condition), Y(condition), Z(condition), 'r.');
title("Graph with the points 'z > 0.15'");
xlabel('x'); ylabel('y'); zlabel('z(x, y)');
view([30 20]);
grid on;



%% %%%%%%%%%%%%%%%%

% 문제 2 코드
clear; clc; close all;

n = 500;
x = rand(1, n); y = rand(1, n);


for i = 1:n
    if  ((x(i)-0.5)^2 + (y(i)-0.5)^2 < 0.25^2) & (y(i) < 0.4*x(i) + 0.2)
        plot(x(i), y(i), 'ro');
        hold on
    else
        plot(x(i), y(i), 'b.');
        hold on
    end
end


% 
% % 변수 설정
% n = 500;  % 생성할 임의의 점 개수
% x = rand(1, n);  % 0~1 사이의 임의의 x 좌표 생성
% y = rand(1, n);  % 0~1 사이의 임의의 y 좌표 생성
% 
% % 부등식 정의
% condition1 = (x - 0.5).^2 + (y - 0.5).^2 <= 0.25^2;  % 원의 내부 영역
% condition2 = y >= 0.4 * x + 0.2;  % 직선의 위쪽 영역
% 
% % 두 조건 모두 만족하는 영역
% inside_points = condition1 & condition2;
% 
% % 그래프 그리기
% figure;
% hold on;
% plot(x(~inside_points), y(~inside_points), 'b.');  % 외부 영역 점 (파란색)
% plot(x(inside_points), y(inside_points), 'ro');  % 내부 영역 점 (빨간색)
% legend('Outside Region', 'Inside Region');
% xlabel('x'); ylabel('y');
% title('Scatter Plot with Region Classification');
% set(gca, 'DataAspectRatio', [1 1 1]);  % 축 비율 고정
% grid on;
% 
% % 조건을 만족하는 점의 개수 출력
% disp(['Number of points satisfying the conditions: ', num2str(sum(inside_points))]);
% 
