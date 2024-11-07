%% problem 1
clear; clc; close all;
fprintf("[Prob 1]");

% 1-(1)
func = @(x)sin(x)./exp(x);
q = integral(func,-2, Inf);
disp(q);

% 1-(2)
q = [4 -1.3 2.4 -1.9 -2.2];
rootq = roots(q)
% numbers of real number are 2

% 1-(3)
% fx = @(x)exp(x).^sin(x).^2;
% gx = @(x)-x.^4 + 10.*x.^3-x.^2+5;
for_val = @(x)exp(x).*(sin(x).^2) - (-x.^4 + 10.*x.^3-x.^2+5);
fplot(for_val, [-10, 10])

x1 = fzero(for_val, 0)
x2 = fzero(for_val, 7)
x3 = fzero(for_val, 9)
x4 = fzero(for_val, 11)

% 1-(4)

% 주어진 상수
k = 10;
t_span = [0 20];
t_vals = 0:0.1:20; % 시간 범위와 간격 설정
initial_conditions = [0; 10]; % [y(0), y'(0)]

% 외부 힘 f(t)를 익명 함수로 정의
f_t = @(t) -3 * abs(t - 5) + 15;

% 질량 m = 0.3에 대한 미분 방정식을 익명 함수로 정의
m1 = 0.3;
odeFunc1 = @(t, Y) [Y(2); (-k * Y(1) + f_t(t)) / m1];

% 질량 m = 0.6에 대한 미분 방정식을 익명 함수로 정의
m2 = 0.6;
odeFunc2 = @(t, Y) [Y(2); (-k * Y(1) + f_t(t)) / m2];

% ode45를 사용하여 질량 m = 0.3에 대해 풀이
[t1, y1] = ode45(odeFunc1, t_span, initial_conditions);

% ode45를 사용하여 질량 m = 0.6에 대해 풀이
[t2, y2] = ode45(odeFunc2, t_span, initial_conditions);

% f(t)를 시간에 대해 계산하여 그래프에 사용할 데이터 생성
f_vals = arrayfun(f_t, t_vals);

% 그래프 그리기
figure;
subplot(3,1,1);
plot(t_vals, f_vals, 'k');
title('External Force f(t)');
xlabel('Time (s)');
ylabel('f(t)');

subplot(3,1,2);
plot(t1, y1(:,1), 'b');
title('Position of mass (m = 0.3)');
xlabel('Time (s)');
ylabel('y(t)');

subplot(3,1,3);
plot(t2, y2(:,1), 'r');
title('Position of mass (m = 0.6)');
xlabel('Time (s)');
ylabel('y(t)');

%% problem 2
clear; clc; close all;

x = [1.0 2.0 3.0 4.0 5.0 6.0];
y = [0.1 1.5 3.9 4.8 5.5 5.7];

figure(2)
subplot(2, 2, 1);
plot(x, log(y), 'o:'); title("Graph: x-log(y)");

%% problem 2
clear; clc; close all;

subplot(2, 2, 2);
plot(x, 1./y, 'o:'); title("Graph: x-1/y");

subplot(2, 2, 3);
plot(log(x), log(y), 'o:'); title("Graph: log(x)-log(y)");

subplot(2, 2, 4);
plot(log(x), y, 'o:'); title("Graph: log(x)-y");

q = polyfit(log(x), y, 1) % 이렇게 하면 lecture06의 표에서 볼 수 있듯이 [m, b]값이 도출됨.
% q_test = polyfit(x, y, 3) % 이렇게 하면 x, y의 점들에 피팅할 수 있는 3차함수의 계수들의 행렬을 반환해줌.
m = q(1);
b = q(2);

xp = linspace(0, 7, 40);
yp = m*log(xp)+b;

figure(3);
plot(x, y, 'ok', xp, yp)
xlabel('x','fontsize',18)
ylabel('y','fontsize',18)

%% problem 3
clear; clc; close all;

% 3-(1)

a = 2;
t = linspace(0, pi/4, 101);
fxt = @(t)2*a*(1-cos(t)).*cos(t);
fyt = @(t)2*a*(1-cos(t)).*sin(t);

[area, err] = calCurveArea(t, fxt, fyt)
