% Practice 1 정서진(2024112396)

fprintf('[Prob 1-1]\n')

7+8/2
(7+8)/2
4+5/3+2
5^3/2
27^(1/3)+32^0.2
27^1/3+32^1/5
0.7854-(0.7854)^3/(1*2*3)+0.785^5/(1*2*3*4*5)... 
-(0.785)^7/(1*2*3*4*5*6*7)

pause


fprintf('[Prob 1-2]\n')

sqrt(64)
sqrt(50+14*3)
sqrt(54+9*sqrt(100))
(15+600/4)/sqrt(121)

pause

fprintf('[Prob 1-3]\n')

x = 15
x=3*x-12

a = 12
B=4
C=(a-B) +40-a/B*10

a = 12;
B = 4;
C = (a-B)+40-a/B*10;
C

pause

fprintf('[Prob 4-1]\n')

x = pi/6;
LHS = cos(x/2)^2
RHS = (tan(x) + sin(x))/(2*tan(x))
LHS-RHS % 1.1102e-16 is equal to 0


Ts = 38;
T0 = 120;
k = 0.45;
t = [0 1 2 3];

T = Ts + (T0 - Ts)*exp(-k*t)

round(T)

pause