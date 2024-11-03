%% problem 1
f1 = [3 15 0 -10 -3 15 -40];
f2 = [3 0 -2 -6];
% (1)
f1val = polyval(f1, 0.5)
f2val = polyval(f2, 0.5)
f3 = conv(f1, f2);
f3val = polyval(f3, 0.5)
[q, r] = deconv(f1, f2);


% q2 = f1(0.5) * f2(0.5);

% fprintf("f3 = %f", q1);
% fprintf("f1 x f2 = %f", q2);