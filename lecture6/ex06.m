%%

p = [ 1 -12.1 40.59 -17.015 -71.59 35.88];
polyval(p, 9)

%% plotting graph using polyval
x = -1.5:0.1:6.7;
y = polyval(p, x);
plot(x, y);
grid on

%% find roots about p
r = roots(p)

%% find polynomial from roots
p2 = poly(r)

%% multi, divi, deriv of polynomials
p1 = [3 15 0 -10 -3 15 -40];
p2 = [3 0 -2 -6];
pm = conv(p1, p2)

[q, r] = deconv(p1, p2) % 몫과 나머지 
%%
k = polyder(p)

%% curve fitting with polynomials

clear; clc;
x = [0.9 1.5 3 4 6 8 9.5];
y = [0.9 1.5 2.5 5.1 4.5 4.9 6.3];
p = polyfit(x, y, 3)

xp = 0.9:0.1:9.5;
yp = polyval(p, xp);
plot(x, y, 'o', xp, yp)
xlabel('x'); ylabel('y');

%% curve fitting with functions other than polynomials

clear; clc;
t = 0:0.5:5;
w = [6 4.83 3.7 3.15 2.41 1.83 1.49 1.21 0.96 0.73 0.64];
figure(1) % Check which functions fits best
subplot(1,3,1); plot(t,w,'o')
subplot(1,3,2); plot(t,1./w,'o')
subplot(1,3,3); plot(t,log(w),'o'); pause;

%%
close all
p = polyfit(t,log(w),1);
m = p(1);
b = exp(p(2));
tm = 0:0.1:5;
wm = b*exp(m*tm);
plot(t,w,'o',tm,wm,'r','markerFaceColor','y')
xlabel('t','FontSize',13);
ylabel('w','FontSize',13); 