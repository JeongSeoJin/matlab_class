% Practice 2 정서진(2024112396)

fprintf('[Prob 2-1]\n')

%1-(1)
x = [(sqrt(5.2))^3, 6.71 * 10^3, (3 + 5.1^2) * cosd(53), 15.8, 90^(1/3), sin(pi/3)/tand(20)]

%1-(2)
vA = [1:3:34]
% vB = vA(1, 1:5)
% vB(1, 6:9) = vA(1, 9:12)
% vB = [vA(1:5) vA(9:12)]
vB = vA([1:5 9:12])
% vA(6:8) = []

pause

fprintf('[Prob 2-2]\n')

%2-(1)
A = [5 2 4; 2 7 -3; 6 -10 0] 
B = [11 5 -3; 0 -12 4; 2 6 1]
C = [7 14 1; 10 3 -2; 8 -5 9]

%2-(2)
E = A * B
F = B * A
G = E - F

%2-(3)
LHS = (A * B * C)'
LHS2 = transpose(A * B * C)
RHS = C' * B' * A'
RHS2 = transpose(C) * transpose(B) * transpose(A)
% transpose함수와 '와 다른 것은 실수부와 함수부를 함께 변환 하는 차이 

LHS - RHS
LHS2 - RHS2

pause

fprintf('[Prob 2-3]\n')

%3-(1)
X1 = inv(A) * B

%3-(2)
X2 = A\B

%3-(3)
Z = X1 - X2

pause

fprintf('[Prob 2-4]\n')

%4-(1)
x = [0:0.5:5];

%4-(2)
y = x.* exp(-x);

%4-(3)
y(1)
y(6)

%4-(4)
plot(x, y), grid on;

pause