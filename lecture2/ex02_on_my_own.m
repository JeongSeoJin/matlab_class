
%======================On my own===========================
matA = [2 3 4 0; 4 3 4 5; 9 7 8 4]

test = [1 2 3 4, 1 2 3 4] %, 를 적지 않아도 되고, 적어도 됨. 
multiplesOfSix = [3 : 3 : 9] * 2
x = linspace(-2, 10, 7)
x1 = 1; x2 = 3; matB = [ 2*5 sin(pi) exp(3); x1 0 x1*x2; linspace(2, 8, 3)]

x = matA(2,1) - matB(2, 1) ^2

x = matA(1, 2:4);
y = matA(2, :)
z = matA(:, 3:4) %전체 column에서 3:4까지의 row에 해당하는 element를 저장

matA(4, :) = [2:3:11]

matB = eye(4); matC = ones(2, 4);
matD = [matA matB]
matE = [matB; matC]

matE(4, :) = []

vecA = [1 2 3 4 5]
length(vecA)

size(matE)

% reshape(matE, 3, 4)

a = magic(4);
reshape(a, [], 2) % 빈칸으로 두면 자동으로 계산해줌.
A = diag(vecA) %이 벡터를 사선의 요소로 가지는 정사각 행렬을 반환함. 
vecA = diag(a) %a 행렬의 대각선 성분을 새로운 1차원 벡터로 만들어 반환함. 

vecA = [2 5 3]; vecB = [-3; 1; 7];
dot(vecA, vecB)

vecA = [2 5 3]; vecB = [-3 1 7];

vecA ./ vecB
vecA .\ vecB
vecA .^ 2

% ?????????????
vecA/vecB
vecA\vecB % 행렬 벡터끼리의 나눗셈
% ????????????

mean(vecA)
max(vecA)

[d, n] = max(vecA)
sum(vecA)

N = [-1 5 3]
y = nthroot(8, N)
mod(8, 3)
rem(8, 3)
% idivide(7, 3, "ceil")
ceil(4.33)
fix(4.33)
floor(4.33)
round(4.33)