close all
clear
clc

disp('Hello world!') %\n기능을 탑재 : 자동으로 줄바꿈 해줌.
fprintf('Hello world!\n')

xVal = 0.0000045213; yVal = xVal^2;
fprintf('xVal is %-10.10e, and its square is %-2.4f.\n',xVal,yVal)
fprintf('xVal is %+5.3f, and its square is %-2.4f.\n',xVal,yVal)
fprintf('xVal is %5.3f, and its square is %-2.4f.\n',xVal,yVal)

x = 1:8;

y = x.^2 -4*x;

plot(x, y)

x = 1:0.1:8;

y = x.^2 -4*x;

plot(x, y)

% close(1) %figure 1창을 닫아주는 역할

x1 = 1:8; y1 = x1.^0.5; x2 = 1:0.1:8; y2 = sin(x2)+1.5;
plot(x1, y1, '--rs')
plot(x1, y1, ':rs')
plot(x1, y1, ':bs')
plot(x1, y1, ':b*')
% clf %그래프를 지워주는 역할.
clf

plot(x1,y1, '--rs', x2,y2, ':bs')

figure(2)

plot(x1, y1, ':ro','LineWidth',2,'MarkerSize',5,'MarkerEdgeColor','b',...
 'MarkerFaceColor',[0.5,0.5,0.5])

x = [-2:0.01:4]; y = 3*x.^3-26*x+6;
yd = 9*x.^2 - 26; ydd = 18*x;
figure(3)
subplot(3,1,1) %3행 1열 
plot(x,y,'-b')
subplot(3,1,2)
plot(x,yd,'--r')
subplot(3,1,3)
plot(x,ydd,':k') 

% fplot
fplot(@(x) 8*x.^2 + 5*cos(x), [-3, 3], '--r^')