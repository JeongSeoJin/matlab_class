% Homework1 정서진(2024112396)

fprintf('[Prob 1]\n')
% 1 ========================
% (1) 1.(a)
(22 + 5.1^2)/(50-6.3^2)

% (2) 2.(b)
132^(1/3) + log(500)/8

% (3) 3.(c)
45 * (288/9.3 - 4.6^2) - 1065*exp(-1.5)

% (4) 4.(d)
(5.9^2 - 2.4^2) / 3 + (log10(12890)/exp(0.3))^2 %%%%%%%

% (5) 5.(e)
cos(7*pi/9) + tan(7*pi/15) * sind(15)
pause 

fprintf('[Prob 2]\n')

% 2 =========================
% (1)
x = 5.1;
y = 4.2;

(x*y)^2 - (x+y)/(x-y)^2 + ((x+y)/(2*x-y))^(1/2)

% (2)
a = 12;
b = 5.6;
c = (3*a)/(b^2);
d = (a-b)^2/c;

a/b + (d-c)/(d+c) - (d-b)^2 %%%%%%%%%%%%
pause

fprintf('[Prob 3]\n')

% 3 ===========================
% (1)
r = 24;
aVol = (32/3 * pi * r^3)^(1/3)

% (2)
aArea = (16/7*pi*24^2)^(1/2)
pause

fprintf('[Prob 4]\n')

% 4 ===========================
% (1)
a = 5.3; gammaD = 42; b = 6;

c = (a^2 + b^2 - 2*a*b*cosd(gammaD))^(1/2)
alpha = acosd((b^2 + c^2 - a^2)/(2*b*c))
beta = acosd((a^2 + c^2 - b^2)/(2*a*c))

totalAngle = gammaD + alpha + beta
pause

fprintf('[Prob 5]\n')

% 5 ===========================
% (1)
ceil(315/37)*37 - 315

% (2)
739 - 54*fix(739/54)
pause

fprintf('[Prob 6]\n')

% 6 ===========================
% (a)
N0 = 20;
Nf = N0 * 2;
syms t;
eqn1 = N0 * exp(0.15 * t) == Nf; 
tf = double(solve(eqn1, t)) %여기서 double을 사용하지 않고 solve만 한다면 계산이 되지 않은 식으로 표현이 됨.

% (b)
t = 100/15 * log(1000000/20)
pause