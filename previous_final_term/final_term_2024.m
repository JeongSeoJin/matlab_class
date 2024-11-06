%% problem 1
clear; clc; close all;
fprintf("[Prob 1]\n");

% 1-(1)
func = @(x)asin(x.^(1/4)).*sinh(x);
q = integral(func, -0.8, 0.9);
disp("1 - (1)");
disp(q);

% 1-(2)
fx = [3 -2 3];
f_pri = polyder(fx);
q1 = polyval(f_pri, 4);
disp("1 - (2)");
disp(q1);


% 1-(3)
% plotting graph
func1 = @(x)exp(0.25*x)-0.1*x.^3.*cos(x)+x+2;
fplot(func1, [-8, 8]);

%find roots based on graph
x1 = fzero(func1, -8)
x2 = fzero(func1, -5)
x3 = fzero(func1, -2)
x4 = fzero(func1, 3)
x5 = fzero(func1, 8)

%% problem 2
clear; clc; close all;
fprintf("[Prob 2]\n");

x = [2.0 3.0 4.0 5.0 6.0 7.0 8.0];
y = [8.2 17.2 31.5 51.6 75.8 101.9 135.4];

% 2-(1)
figure(2);
subplot(2, 2, 1);
plot(x, log(y), 'o:');

subplot(2, 2, 2);
plot(x, 1./y, 'o:');

subplot(2, 2, 3);
plot(log(x), log(y), 'o:');

subplot(2, 2, 4);
plot(log(x), y, 'o:');

% 2-(2)
mb = polyfit(log(x), log(y), 1);
m = mb(1)
b = exp(mb(2))

xp = linspace(0, 9, 90);
yp = b*xp.^m;

% 2-(3)
figure(3);
plot(x, y, 'o', xp, yp);

%% problem 3

% 상수 정의
g = 9.81;     % 중력 가속도 (m/s^2)
L = 2;        % 진자의 길이 (m)
m = 0.25;     % 진자의 질량 (kg)
c = 0.2;      % 공기 저항 계수
theta0 = deg2rad(45); % 초기 각도 (라디안으로 변환)
omega0 = 0;   % 초기 각속도 (rad/s)

% 운동 방정식을 해결하기 위한 시간 범위 설정
t_span = [0 10];

% 익명 함수로 진자의 운동 방정식 정의
% dtheta/dt = omega
% domega/dt = -(g/L)*sin(theta) - (c/m)*omega
pendulumODE = @(t, Y) [Y(2); - (g/L) * sin(Y(1)) - (c/m) * Y(2)];

% 초기 조건 설정 [초기 각도, 초기 각속도]
initial_conditions = [theta0; omega0];

% ode45를 사용하여 방정식 풀이
[t, Y] = ode45(pendulumODE, t_span, initial_conditions);

% 그래프 그리기
figure;
plot(t, rad2deg(Y(:,1)), 'b-'); % 각도를 도로 각도로 변환하여 플로팅
title('Pendulum Angle \theta vs Time');
xlabel('Time (s)');
ylabel('Angle \theta (degrees)');
grid on;

%% problem 4

% 초기 속도와 위치 설정 (km/h에서 m/s로 변환)
v0 = 300 * 1000 / 3600;  % 초기 속도: 300 km/h -> 83.33 m/s
x0 = 0;  % 초기 위치

% 시간 범위 설정
t_span = [0, 13];  % 충분히 긴 시간 범위

% 고정된 매개변수 설정
m = 2;  % 질량
k = 3;  % 용수철 상수

% ode45를 사용하여 연립 미분방정식 풀기
[t, X] = ode45(@(t, X) custom_dynamics(t, X), t_span, [x0; v0]);

% 결과에서 위치와 속도 추출
x = X(:, 1);  % 위치
v = X(:, 2);  % 속도

% 플로팅
figure;

% 속도 vs 시간
subplot(2, 1, 1);
plot(t, v, 'b-', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Velocity (m/s)');
title('Velocity vs. Time');
grid on;
