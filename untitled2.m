% 2023 midterm 2024112396(정서진)

fprintf("[Prob 1]\n");

x = [1 3 5 7 9];
y = [-2 0.5 3 5.5 8];
z = (x.^(0.5) .* (y.^2 - x .* y).^2) ./ (x + 2.*y)

pause

fprintf("[Prob 2]\n");

theta = [5/6*pi 4/6*pi 3/6*pi 2/6*pi pi/6];
f = sin(2 .* theta) .* cos(4.*theta).^2 + 1./tan(theta)

pause

fprintf("[Prob 3]\n");

A = [1.5 * eye(3, 3) [-ones(2); zeros(1,2)] ]


pause