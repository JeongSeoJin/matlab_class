clear
clc
close all

x = [-2:0.01:4]; y = 3*x.^3-26*x+6;
yd = 9*x.^2 - 26; ydd = 18*x;
plot(x,y,'-b') 
grid on
plot(x,yd,'--r') % Without hold on, plot(x,y,'-b') disappears.
plot(x,ydd,':k')
hold off