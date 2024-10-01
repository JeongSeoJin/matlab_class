% Homework 3 정서진(2024112396)

fprintf('[Prob 1]\n')

grade_vector = input("Please enter the grades as a vector [x x x]:")

fprintf("There are %i grades.\n", length(grade_vector))
fprintf("The average grade is %.1f.\n", round(mean(grade_vector), 1))
fprintf("The standart deviationis %.1f.\n", round(std(grade_vector), 1))

pause 

fprintf('[Prob 2]\n')

den = input("input density : ");
vel = input("input velocity : ");
d_D = input("input d/D value as a vector : ");

fprintf("density : %i\nvelocity : %i\n", den, vel)
delta_p = 0.5 .* (1 - d_D.^2).^2 .* den .* vel^2;

table_vec = [d_D' delta_p'];

fprintf("d/D delta p\n")
fprintf("%.1f %.1f\n", table_vec')

pause

fprintf('[Prob 3]\n')

h = 0.1;
X = -pi:h:2*pi;
f = sin(2.*X) .* cos(0.5.*X);
Y = diff(f)/h;
plot(X(:,1:length(Y)),Y,'r',X,f,'b')
title(" 𝑓(𝑥) = sin(2𝑥)(cos(0.5𝑥))^2")
legend('f(x)', 'f'+"'"+'(x)')

pause

fprintf('[Prob 4]\n')

figure(2)
t = [0:0.1:pi];
x = 0.7 .* sin(10 .* t);
y = 1.2 .* sin(8 .* t);
plot(x, y)
% xlim([-1.5 1.5])
% ylim([-1.5 1.5])
title('Parametric equation: 𝑥 = 0.7 sin(10𝑡) , 𝑦 = 1.2 sin(8𝑡) for 0 to 𝜋.')
axis([-1.5, 1.5, -1.5, 1.5])

pause

fprintf('[Prob 5]\n')

x = [-2 : 0.1 : 2];
y = [-2 : 0.1 : 2];
[X, Y] = meshgrid(x, y);
Z = -1.4 .* X .* Y .^3 + 1.4 .* Y .* X.^3;

figure(3)
mesh(X,Y,Z)
surface(X, Y, Z)
title(" 3D surface plot of 𝑧 = −1.4𝑥𝑦^3  + 1.4𝑦𝑥^3")
figure(4)
mesh(X,Y,Z)
title(" 3D mesh plot of 𝑧 = −1.4𝑥𝑦^3  + 1.4𝑦𝑥^3")

pause