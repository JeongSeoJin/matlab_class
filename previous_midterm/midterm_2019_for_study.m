%% Prob #1
fprintf('[ Prob 1 ]\n')

% (1) 연산 수행
(16.5^2 * sqrt(8.4 - sqrt(70))) / (4.3^2 - 17.3)


% (2) 연산 수행
15 * ((sqrt(10) + 3.7^2) / (log10(1365) + 1.9))

pause
%% Prob #2
fprintf('[ Prob 2 ]\n')


% 정육면체의 한 변의 길이
side_length = 29; % cm

% (1) 구의 반지름 구하기 (겉넓이가 같은 구)
surface_area_cube = 6 * (side_length^2);
radius_equal_surface = sqrt(surface_area_cube / (4 * pi))

% (2) 구의 반지름 구하기 (부피가 같은 구)
volume_cube = side_length^3;
radius_equal_volume = ((3 * volume_cube) / (4 * pi))^(1/3)

pause

%% Prob #3
fprintf('[ Prob 3 ]\n')

% (1)
A1 = [0 0 0 0 0; 0 3 7 -48 0; 0 2 7 -40 0; 0 1 7 -32 0]

% (2)
A2 = [[zeros(1,3); ones(2,3)] 2*eye(3)]
pause
%% Prob #4
fprintf('Prob #4\n')

% 벡터 정의
u = [4, 5, -4];
v = [-8, -2.2, 3];

% (1) sum 함수 사용한 내적
sum(u .* v)


% (2) 행렬 곱 이용
u * v'

% (3) dot 함수 사용
dot(u, v)

pause
%% Prob #5
fprintf('[Prob 5]\n')

x = -10:0.1:10;
y = -10:0.1:10;

x = x+ (x==0) * eps;
y = y + (y==0) * eps;

% x와 y 정의
[X, Y] = meshgrid(x, y);
Z = sin(sqrt(X.^2 + Y.^2)) ./ sqrt(X.^2 + Y.^2);


% 3D 표면 플롯
surf(X, Y, Z, 'EdgeColor','none')
title('3D Surface Plot')
xlabel('x')
ylabel('y')
zlabel('z')

% (2) 조건에 해당하는 (x, y) 개수 구하기
count = sum(sum((z > 0.5) & (z < 0.55)));
disp(count)

%% Prob #6
fprintf('[Prob 6]\n')

% 사용자로부터 a, b, c 입력받기
a = input('Enter the coefficient a: ');
b = input('Enter the coefficient b: ');
c = input('Enter the coefficient c: ');

% 판별식 계산
D = b^2 - 4*a*c;

% 해 계산 및 출력
if D > 0
    root1 = (-b + sqrt(D)) / (2*a);
    root2 = (-b - sqrt(D)) / (2*a);
    fprintf('The equation has two roots: %.2f and %.2f\n', root1, root2);
elseif D == 0
    root = -b / (2*a);
    fprintf('The equation has one root: %.2f\n', root);
else
    fprintf('The equation has two complex roots.\n');
end

clear; clc; close all;
%% Prob #7
clear; clc; close all;

% (1) ln(1+x) 테일러 급수 구현
x = input('Enter the value of x: ');
n = input('Enter the number of terms: ');

% 테일러 급수 합 계산
Sn = 0; 
for k = 1:n
    term = ((-1)^(k+1) * x^k) / k;
    Sn = Sn + term;
    if k > 1
        E = abs(Sn - S_prev) / abs(S_prev); % 오차 계산
        if E < 1e-6
            break
        end
    end
    S_prev = Sn;
end
fprintf('The Taylor series approximation of ln(1+%.2f) is %.4f\n', x, Sn);

%% (2) 그래프 그리기
n = input('Enter the number of terms: ')

x_range = -1:0.01:2;  % x 값의 범위 설정
f_x = log(1 + x_range);  % 실제 ln(1+x) 값 계산
f_n = zeros(size(x_range));  % 초기화


for i = 1:length(x_range)    % 각 x_range의 값에 대해 f_n 계산
    current_x = x_range(i);  % 현재 x 값 설정
    Sn = 0;  % 초기화
    for k = 1:n
        term = ((-1)^(k+1) * current_x^k) / k;  % 각 항 계산
        Sn = Sn + term;  % 현재 항을 더하기
    end
    f_n(i) = Sn;  % 계산된 값 저장
end

plot(x_range, f_x, 'k', x_range, f_n, 'r')
legend('ln(1+x)', 'Taylor series expansion')
xlabel('x')
ylabel('f(x)')
title(sprintf('Taylor Series Expansion with n=%d', n))

pause