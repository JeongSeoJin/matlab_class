function dYdt = springMassODE(t, Y, m, k, f)
% springMassODE - Defines the differential equations for the spring-mass system
%
% Syntax: dYdt = springMassODE(t, Y, m, k, f)
%
% Inputs:
%    t - Current time
%    Y - Vector where Y(1) is position y(t) and Y(2) is velocity y'(t)
%    m - Mass of the object
%    k - Spring constant
%    f - Function handle for the external force as a function of time
%
% Outputs:
%    dYdt - Derivative of Y as a column vector

% Extract position and velocity from Y
y = Y(1);
v = Y(2);

% Define the differential equations
dydt = v;
dvdt = (-k/m) * y + f(t) / m;

% Return the derivatives as a column vector
dYdt = [dydt; dvdt];
end
