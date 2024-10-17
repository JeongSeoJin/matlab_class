% Homework5 정서진(2024112396)

fprintf("[Prob1]\n");

% rA = 2; rB = 5; thA = pi/6; thB = 3*pi/4;
d = @(rA, thA, rB, thB)sqrt(rA^2+rB^2-2*rA*rB*cos(thA-thB)) % @ can handle multiple variables
d(2, pi/6, 5, 3*pi/4)
d(3, 0, 4, pi/2)

pause

%% %%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf("[Prob2]\n");

x = [-2:0.1: 4];
ftc_P5_2(x);

% plot(x, ftc_P5_2(x))

%% %%%%%%%%%%%%%%%%%%%%%%%%
fprintf("[Prob3]\n")

theta = [pi/6, 5*pi/6];
ftc_P5_3(theta);

pause

%% %%%%%%%%%%%%%%%%%%%%%%%%
fprintf("[Prob4]\n")

vi = 230;
theta = 39;

h_max = @(vi, theta)((vi.*sind(theta)).^2.*sind(theta).^2) ./ (2.*9.81);
d = @(vi, theta)((vi.*cosd(theta)).^2.*sind(2.*theta)) ./ (9.81);
t = @(vi, theta)(vi.*sind(theta)) ./ (9.81);
% traj = @(vi, theta, time)

fprintf("Distance traveled = %.3f(m)\n", d(vi, theta));
fprintf("in t = %.3f(s)\n", t(vi, theta));
fprintf("and the maximun height reached = %.3f(m)\n", h_max(vi, theta));

% plot(d(vi, theta), h_max(vi, theta))

t_plot = linspace(0, 2*t(vi, theta), 100);
x_plot = vi.*cosd(theta).*t_plot;
y_plot = vi.*sind(theta).*t_plot - 0.5.*9.81.*t_plot.^2;

plot(x_plot, y_plot);

pause

