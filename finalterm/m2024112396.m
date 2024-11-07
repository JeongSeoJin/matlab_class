%%
clear; clc; close all;
fprintf("[Prob 1]\n");

% [Prob 1-(1)]
func = @(x) x.^0.3 .* cosh(x).^2;
result = integral(func, 0, 1)

% [Prob 1-(2)]
f = [1 0 2 -3];
a = polyval(polyder(f), -3)

% [Prob 1-(3)]
fx = @(x) cosh(x)./exp(x) - 2.5 * sin(x) - (0.08 * x.^2 - x - 0.15);
fplot(fx, [-1, 15]); %그래프 확인 과정 
grid on;

x1 = fzero(fx, 0.5)
x2 = fzero(fx, 2)
x3 = fzero(fx, 12)

% [Prob 1-(4)]
dydt = @(t, y) (t + cos(t)) / (y + 1); 
[t, y] = ode45(dydt, 0:0.01:2.5, -1);

hold on
figure(2);
plot(t, y); 
pause;
 
%% 
clear; clc; close all;
fprintf("[Prob 2]\n");
% [Prob 2-(a)]

% (1) 점 P의 좌표 (x, y) 선언
a = 2;
theta = linspace(0, 10*pi, 1000);
x = @(theta) a * (theta - sin(theta));
y = @(theta) a * (1 - cos(theta));

% (2) 주어진 범위에서 점 P의 자취 그리기
figure;
plot(x(theta), y(theta));
axis equal;
hold on;

% (3) 점 Q의 좌표 (x_c, y_c) 선언
f = @(t) t.^2; 
xc = @(theta, t) a * cos(theta) + a * f(t); 
yc = @(theta, t) a * sin(theta) + a;

% (4) 
t_vals = 0:1:5;
for i = 1:length(t_vals)
    t = t_vals(i);
    plot(xc(theta, t), yc(theta, t)); 
    hold on;
end

grid on;

pause;

%%
clear; clc; close all;
fprintf("[Prob 3]\n");

% 시간 변수 설정
t = 1.5:0.1:3.2;

% 이론 값 y_true(t) 정의 (익명 함수)
y_true = @(t) 4 * (t .^ (3/2));

% 노이즈 함수 y_noise(t) 정의 (익명 함수)
y_noise = @(t) 10 * (rand(1) - 0.5);  % 매번 다른 노이즈 생성

% 측정된 값 계산을 위한 초기화
y_measured_vals = zeros(size(t));

% 각 시간에 대해 측정된 값 계산 (for문을 이용해 노이즈 추가)
for i = 1:length(t)
    y_measured_vals(i) = y_true(t(i)) + y_noise(t(i));
end

% 이론 값 계산
y_true_vals = y_true(t);

% 그래프 그리기
figure(4);
plot(t, y_true_vals, '-b', 'DisplayName', 'True Value');
hold on;
plot(t, y_measured_vals, 'or', 'DisplayName', 'Measured Value with Noise');
grid on;

% 피팅
% 1차 다항식 피팅
p1 = polyfit(t, y_measured_vals, 1);
y_fit1 = polyval(p1, t);

% 2차 다항식 피팅
p2 = polyfit(t, y_measured_vals, 2);
y_fit2 = polyval(p2, t);

% 3차 다항식 피팅
p3 = polyfit(t, y_measured_vals, 3);
y_fit3 = polyval(p3, t);

%지수함수 피팅 
p4 = polyfit(t, log(y_measured_vals), 1);
b = exp(p4(2));
m = p4(1);
y_fit4 = b * exp(m*t);


% 피팅 결과 그래프에 추가
plot(t, y_fit1);
plot(t, y_fit2);
plot(t, y_fit3);
plot(t, y_fit4);

q1 = trapz(t, y_fit1)
q2 = trapz(t, y_fit1)
q3 = trapz(t, y_fit1)
q4 = trapz(t, y_fit1)
q5 = trapz(t, y_measured_vals)
