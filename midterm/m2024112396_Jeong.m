disp("[Prob 1-(1)]")

x = [2 3 4 5 6];
y = [-3 -2.5 -2 -1.5 -1];
z = (x .* y .* (x + y).^0.25) ./ (y.^2 + 2.*y - 1);
disp('Result of z values:')
disp(z)

pause

disp("[Prob 1-(2)]")

theta = [15 30 45 60 75];  % 각도 (degree 단위)
f_theta = cosd((1./theta) .* tand(0.5 .* theta)) + (1 ./ sind(theta));
disp('Values of f(theta):')
disp(f_theta)

pause

disp("[Prob 1-(3)]")

A = [-2*eye(3) zeros(3, 1) ones(3, 1)];
disp('Matrix A:')
disp(A)

pause

disp("[Prob 1-(4)]")

A = [1 -1 1 -1; 4 1 0 0; -2 0 0 -1; 0 0 -4 3];
B = [-1; 6; -1; 3];
x = A\B;
disp('Solution for x:')
disp(x)

pause
