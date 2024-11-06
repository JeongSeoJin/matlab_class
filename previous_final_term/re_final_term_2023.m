%% problem 1
%(4)
% 파라미터 설정
m = [0.3, 0.6]; % 질량 값들
k = 10;         % 용수철 상수
t_span = [0 20]; % 시간 범위
y0 = [0; 10];   % 초기 조건 [y(0); y'(0)]

% 외부 힘 함수 정의
f = @(t) -3 * t - 5 * abs(t) + 15;

% 미분 방정식 정의 함수 (입력 인자는 t와 y로만 설정)
spring_mass_ode = @(t, y) [y(2); (-k * y(1) + f(t)) / m_val];

% 그래프 출력
figure(1)

% 외부 힘 f(t) 그래프
subplot(3, 1, 1);
fplot(f, t_span);
title('External Force f(t)');
xlabel('Time (s)');
ylabel('Force (N)');
grid on;

% 첫 번째 질량에 대해 계산 및 그래프
m_val = m(1); % 첫 번째 질량 사용
[t1, y1] = ode45(spring_mass_ode, t_span, y0);

subplot(3, 1, 2);
plot(t1, y1(:, 1), 'b');
title('Position of Mass (m = 0.3 kg)');
xlabel('Time (s)');
ylabel('Position y(t)');
grid on;

% 두 번째 질량에 대해 계산 및 그래프
m_val = m(2); % 두 번째 질량 사용
[t2, y2] = ode45(spring_mass_ode, t_span, y0);

subplot(3, 1, 3);
plot(t2, y2(:, 1), 'r');
title('Position of Mass (m = 0.6 kg)');
xlabel('Time (s)');
ylabel('Position y(t)');
grid on;

%% problem 3
clear; clc; close all;
a = 2;
t = linspace(0, 2*pi, 101);
x = @(t)2*a*(1-cos(t)).*cos(t);
y = @(t)2*a*(1-cos(t)).*sin(t);


[integral_area, err] = polyareaintegral(t, x, y)