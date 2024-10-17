disp("[Prob 1-(1)]")

x = 1.5:1:5.5;
y = -2:-1.5:-8;
z = (x.^0.33 .* y.^2 .* (9.*x + y)) ./ (3.*y - 1) + (1 ./ (x .* y));
disp(z)

pause

disp("[Prob 1-(2)]")

theta = (10:15:70) * (pi / 180);  % 각도 (degree 단위)
f_theta = sin(theta) .* sinh(theta) + (1 ./ (cos(theta - pi)));
disp(f_theta)

pause

disp("[Prob 1-(3)]")

A = [[[linspace(-2, 0, 3)]; 3 * ones(1,3)] zeros(2,1) eye(2) ];
disp(A)

pause

disp("[Prob 1-(4)]")

A = [2 -1 -1 1; 1 4 0 0; 0 1 -2 0; 0 -2 0 -3];
B = [1; 6; -2; 1];
x = A\B;
disp(x)

pause
