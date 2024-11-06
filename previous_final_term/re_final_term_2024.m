%% problem 1
clear; clc; close all;

%(1)
func1 = @(x)asin(x.^0.25).*sinh(x);
q1 = integral(func1, -0.8, 0.9)

%(2)
func2 = [3 -2 3];
func2_pri = polyder(func2);
q2 = polyval(func2_pri, 4)

%(3)
func3 = @(x)exp(0.25.*x)-0.1.*x.^3.*cos(x) + x + 2;
fplot(func3, [-8, 8]);

%% problem 2
x = [2 3 4 5 6 7 8];
y = [8.2 17.2 31.5 51.6 75.8 101.9 135.4];

%(1)
figure(2)
subplot(2,2,1);
plot(x, log(y), ':o');
hold on

subplot(2,2,2);
plot(x, 1./y, ':o');
hold on

subplot(2,2,3);
plot(log(x), log(y), ':o');
hold on

subplot(2,2,4);
plot(log(x), y, ':o');
hold on

%(2)
q = polyfit(log(x), log(y), 1);
m = q(1)
b = exp(q(2))

%(3)
figure(3)
xp = linspace(1, 9, 30);
yp = b*xp.^m;
plot(xp, yp, x, y, 'o')

%(2, 3) - another one
q = polyfit(log(x), y, 1);
m = q(1)
b = q(2)

figure(4)
xp = linspace(1, 9, 30);
yp = m*log(xp) + b;
plot(xp, yp, x, y, 'o')


%% problem 3
% 초기 각도 및 초기 각속도 설정
theta0 = pi / 4;  % 초기 각도 (45도)
omega0 = 0;  % 초기 각속도 (각도 변화율)

% 시간 범위 설정
t_span = [0, 10];  % 충분히 긴 시간 범위

% ode45를 사용하여 미분방정식 풀기
[t, theta] = ode45(@(t, theta) pendulum_dynamics(t, theta), t_span, [theta0; omega0]);

% 결과에서 각도 추출
angle = theta(:, 1);  % 각도 (radian)

% 시간 vs 각도 그래프 플로팅
figure;
plot(t, angle, 'b-', 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Angle (radians)');
title('Angle vs. Time');
grid on;

