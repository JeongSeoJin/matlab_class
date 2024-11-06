%% problem 1
t = 0:1:7;
v = [0 14 39 69 95 114 129 139]
distance = trapz(t, v)

%% problem 3
s = @(t)sin(t.^2);
c = @(t)cos(t.^2);
% S = @(x)integral(s, 0, x)
% C = @(x)integral(c, 0, x)
S = [];
C = [];
j = 1;

x=0:0.05:4;

for i=x
    S(j) = integral(s, 0, i);
    C(j) = integral(c, 0, i);
    j = j+1;
end

plot(x, S)
hold on
plot(x, C)
hold on
plot(S, C)


%% problem 4
clear; clc; close all;


% 초기 속도와 위치 설정 (km/h를 m/s로 변환)
v0 = 300 * 1000 / 3600;  % 300 km/h -> 83.33 m/s
x0 = 0;  % 초기 위치

% 시간 범위 설정
t_span = [0, 13];

% 연립 미분방정식 정의 (위치와 속도)
dynamics = @(t, X) [X(2); -0.0035 * X(2)^2 - 3];
% X(1): 위치 x(t)
% X(2): 속도 v(t)

% 초기 조건 (위치와 속도를 포함하는 벡터로 정의)
initial_conditions = [x0; v0];

% ode45를 사용하여 연립 미분방정식 풀기
[t, X] = ode45(dynamics, t_span, initial_conditions);

% 결과에서 위치와 속도 추출
x = X(:, 1);  % 위치
v = X(:, 2);  % 속도

% 플로팅
figure;

% 속도 vs 시간
subplot(2, 1, 1);
plot(t, v, 'b-', 'LineWidth', 1);
xlabel('Time (s)');
ylabel('Velocity (m/s)');
title('Velocity vs. Time');
grid on;

% 위치 vs 시간
subplot(2, 1, 2);
plot(t, x, 'r-', 'LineWidth', 1);
xlabel('Time (s)');
ylabel('Distance (m)');
title('Distance vs. Time');
grid on;
