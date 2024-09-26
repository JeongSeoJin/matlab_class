% Practice 3 정서진(2024112396)

%1
disp(' ')
name = input('Your Name : ', 's') % 's' : input as string
ID  = input('Student ID : ') 
disp(' ')

Tenpi = 31.415926

%2
disp(' ')
fprintf([' TP1 = %-2.2f\n TP2 = %-7.5f\n TP3 = %+.1f\n TP4 = %.3e\n' ...
    ' TP5 = %.6E\n'],Tenpi, Tenpi, Tenpi, Tenpi, Tenpi)
disp(' ')

%3 - 1
disp(' ')
fprintf(['Spring Constant [N/cm]\nTest carried out on Oct. 26th, 2023 at DGU.\n[ Blank Line ]\n'])

%3 - 2
N5 = [1 2 3 4 5 ];
M5 = [0.5 0.7 1.0 1.2 1.5];
L5 = [12.3 18.9 23.7 32.1 36.3];

%3 - 3
spring_const = length ./ mass;

%3 - 4
K5 = [N5' M5' L5' spring_const'];
table = ['    No.', '       Mass(kg)', ' Length(cm)', 'k(N/cm)'];
% with_table = [table; K5]

disp('Spring Constant Test')
disp(' ')
disp(table)
disp(K5)

fprintf('Spring Constant Test\n\n')
fprintf('    No.        Mass(kg)   Length(cm)K(N/cm)\n')
fprintf('%10.4f %10.4f %10.4f %10.4f\n', K5')


%4 - 1
disp(' ')
x = [0:0.1:10]';

%4 - 2
y1 = exp(-x);
y2 = x .* exp(-x);
y3 = x .^2 .* exp(-x);

%4 - 3
plot(x, y1, '-b', x, y2, ':ro', x, y3, '-.k*')

figure(2)
plot(x, y1, '-b')
hold on
plot(x, y2, ':ro')
hold on
plot(x, y3, '-.k*')

%5 - 1
x = [-1:0.1:1];
y = [-1:0.1:1];
[X, Y] = meshgrid(x,y);
Z = X.^2 - Y.^2;
figure(3)

%5 - 2
mesh(X, Y, Z)

%5 - 3
surface(X, Y, Z)