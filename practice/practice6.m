% Practice 6 정서진(2024112396)

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('[Prob 1]')
disp('1 - (1)')
f1 = [3 15 0 -10 -3 15 -40];
f2 = [3 0 -2 -6];

f1Val = polyval(f1,0.5);
f2Val = polyval(f2,0.5);
fprintf('f1(0.5) = %.4f\n', f1Val)
fprintf('f2(0.5) = %.4f\n', f2Val)

disp('1 - (2)')
f3 = conv(f1,f2);
f3Val = polyval(f3, 0.5);
disp(f3Val - f1Val*f2Val)

disp('1 - (3)')
[q,r] = deconv(f1,f2);
disp(f1 - (conv(q,f2)+r))
%Ans. f4 = q + r/f2

disp('1 - (4)')
[n,d] = polyder(f1,f2);
derVal1 = polyval(n,1)/polyval(d,1);
fprintf('derVal1 = %.4f\n',derVal1)

disp('1 - (5)')
dq = polyder(q);
[dr, df2] = polyder(r,f2);
derVal2 = polyval(dq,1) + polyval(dr,1)/polyval(df2,1);
fprintf('derVal2 = %.4f\n\n',derVal2)

pause;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('[Prob 2]')
disp('2 - (1)')

xi = [0 1 2 3];
yi = [1 2.3 2.8 3.4];

p2 = polyfit(xi,yi,2);

a = p2(1);
b = p2(2);
c = p2(3);

yj = polyval(p2,1.5);

fprintf('yj = %.4f\n',yj)

disp('2 - (2)')

xk = 1.5;
ykLin = interp1(xi, yi,xk,'linear');
ykSpl = interp1(xi, yi,xk,'spline');
ykPch = interp1(xi, yi,xk,'pchip');

fprintf('Linear = %.4f\n',ykLin)
fprintf('Spline = %.4f\n',ykSpl)
fprintf('Pchip = %.4f\n\n',ykPch)

pause;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('[Prob 3]')

m = 1000;
k = 5*10^6;
alp = k/(4*m*pi^2);

p1 = [-1 0 alp];
p2 = [-1 0 alp*2];
p3 = [alp^2 0 -2*alp^3];

p4 = conv(p2,p2) + [0 0 0 0 -alp^2];
p5 = conv(p1,p4);
p6 = p5 + [0 0 0 0 p3];

NatFreq = roots(p6);
NatFreq_logic = NatFreq(NatFreq>0);
fprintf('NatFreq = %.4f\n\n',NatFreq_logic);

pause;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp('[Prob 4]')

p1 = [1 0];
p2 = [1 1.8];
p3 = [1 -0.4];
p4 = [1 -1.6];

p5 = conv(p1,p2);
p6 = conv(p3,p4);
p = conv(p5,p6);

x = -2:0.1:2;
y = polyval(p,x);
plot(x,y)
grid on;

pause;
close all;