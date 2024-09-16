
fprintf('[Prob 2-1]\n')

x = [(sqrt(5.2))^3, 6.71 * 10^3, (3 + 5.1^2) * cos(53), 15.8, nthroot(90, 3), sin(pi/3)/tand(20)]


vA = [1:3:34]
vB = vA(1, 1:5)
vB(1, 6:9) = vA(1, 9:12)

pause

fprintf('[Prob 2-2]\n')

A = [5 2 4; 2 7 -3; 6 -10 0] 
B = [11 5 -3; 0 -12 4; 2 6 1]
C = [7 14 1; 10 3 -2; 8 -5 9]

E = A * B
F = B * A
G = E - F

LHS = (A * B * C)'
RHS = C' * B' * A'

LHS - RHS

pause

fprintf('[Prob 2-3]\n')

X1 = inv(A) * B
X2 = A\B

Z = X1 - X2

pause

fprintf('[Prob 2-4]\n')

x = [0:0.5:5];
y = x.* exp(-x);

y(x == 2.5)
y(x == 0)

plot(x, y), grid on;

pause