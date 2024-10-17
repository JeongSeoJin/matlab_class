function y = chp6one(x)
global a b
num = (x.^4.*sqrt(3*x+5));
den = (x.^a+1).^b;
y = num./den;