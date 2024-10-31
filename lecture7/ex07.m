x1 = fzero(@(x)x.*exp(-x) - 0.2, 0.5)
x3 = fzero(@(x)x.*exp(-x) - 0.2, 3)
% 이렇게 구하는데에는 한계가 있다. <- 범위를 한정지어야하기 때문에

% x1 = fzero(@calExampleFunc, 0.5)

%% integral 함수는 구분구적법과 같은 방법을 사용 
func = @(x)exp(-x).*sin(x);
q = integral(func, 0.2, 1.5)
q = integral(func, 0.2, Inf)
fplot(func, [0, 10])

%user defined함수를 이용하여 integral 함수 사용해보기

%% trapz함수는 사다리꼴 모양으로 구하여 계산 이는 함수가 식으로 나와있지 않고 
% data point 로 표현되어져 있을 때 사용 -> 환율, 주식과 같은 상황 
hold on

x = linspace(0, 10, 100)
y = linspace(0, 20, 100)
plot(x, y)
q = trapz(x, y)

%% ordinary differential equation 미분방정식
[t1, y1] = ode45(@odeEx01, [1:0.05:3], 4.2)
plot(t1, y1)