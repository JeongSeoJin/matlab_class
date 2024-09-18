% Homework2 정서진(2024112396)

fprintf('[Prob 1]\n')
x = [0:1:6]
y = x.^2 - exp(0.5.*x) + x

x = [1.5:0.5:4]
y = (x.^4).* exp(-x)
pause

fprintf('[Prob 2]\n')

% 2
V = round(linspace(4, 1, 7), 1)

r = round((3.*V./4*pi).^(1/3), 1)

S = round((4*pi.*r.^2), 1)
pause

fprintf('[Prob 3]\n')

% 3
u = [5 -2 4]
v = [-2 7 3]
w = [8 1 -3]
LHS = dot((u + v), cross((v + w), (w+u)))
RHS = dot(2*u, cross(v, w))

result = LHS - RHS
pause

fprintf('[Prob 4]\n')

% 4
syms a b c d e f
eqn1 = 2*a - 4*b + 5*c - 3.5*d + 1.8*e +4*f == 52.52;
eqn2 = -1.5*a +3*b +4*c - d -2*e +5*f == -21.1;
eqn3 = 5*a + b - 6*c +3*d -2*e + 2*f == -27.6;
eqn4 = 1.2*a -2*b+3*c +4*d -e +4*f == 9.16;
eqn5 = 4*a + b -c +4*d - 2*e -4*f == -16.2;
eqn6 = 3*a +b -c +4*d -2*e -4*f == -16.2;

solution = solve([eqn1, eqn2, eqn3, eqn4, eqn5, eqn6], ...
    [a, b, c, d, e, f]);

a = solution.a
b = solution.b
c = solution.c
d = solution.d
e = solution.e
f = solution.f

pause