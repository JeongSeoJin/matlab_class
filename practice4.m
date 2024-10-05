% practice 4 정서진(2024112396)

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf('[Prob 1]\n')

t_engine = 0.2;
F = 16;
g = 9.81;
m = 0.05;
vpara = -25;
dt = 0.01; % --> discretization : 이산화.

%%
n = 1;
t(n) = 0;
v(n) = 0;
h(n) = 0;

% segment1
a1 = (16 - m*g)/m;

while t(n) < t_engine
    n = n+1;
    t(n) = t(n-1) + dt;
    v(n) = a1 * t(n);
    h(n) = 0.5 * a1 * t(n)^2;
end 

v1 = v(n);
h1 = h(n);
t1 = t(n);

% segment2
while v(n) > vpara
    n = n+1;
    t(n) = t(n-1) + dt;
    v(n) = v1 -g * (t(n)-t1);
    h(n) = h1 + v1*(t(n)-t1) - 0.5 * g * (t(n)-t1)^2;
end

v2 = v(n);
h2 = h(n);
t2 = t(n);

while h(n) > 0
    n = n + 1;
    t(n) = t(n-1) + dt;
    v(n) = vpara;
    h(n) = h2 + vpara*(t(n)-t2);
end

figure(1)
subplot(1,2,1)
plot(t, v, t2,v2, 'o')

grid on

subplot(1,2,2)
plot(t, h, t2, h2, '^')

grid on

pause 

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf('[Prob 2]\n')

%2-(1)
n = 10;
for i = 1:n
    fprintf("%6i %8.4f\n", i, sqrt(i));
end

%2-(2)
a = [3, 40, 1, 8, 0];
b = [-7, 5, 4, 16, 1];
c = [];

n = 1;
while ( n <= 5 )
    c(n) = a(n) + b(n);
    n = n + 1
end
disp(c)

pause

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf('[Prob 3]\n')

n = input('Type in Number of Parcels : ');
type = input('Choose the Type. (registered = 1, regular = 0) : ');
if type == 1
    charge = 4000 * n;
else
    charge = 2700 * n;
end
fprintf('total Postage is %i won. \n', charge);

pause

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf('[Prob 4]\n');
my_num = input('Type in the Number : ');
sgn = sign(my_num); 

switch sgn
    case -1
        fprintf('%i is Negative.\n', my_num);
    case 0
        fprintf('%i is Zero.\n', my_num);
    case 1
        fprintf('%i is Positive.\n', my_num);
end

pause

