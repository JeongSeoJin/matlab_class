%1 차원 배열

myScores = [12, 23]
myScores = [92 81 78 95];
gateNum = [12; 13; 27]
gateNum = [12; 13; 27]'
gateNum = ([12; 13; 27]')'

0:0.1:1 % 0부터 1까지 0.1의 간격으로 나누어 1차원 배열(벡터)를 만듦
linspace(0, 1, 10) % 0부터 1까지 10등분을 한 1차원 배열을 만듦
2:5

%2차원 배열

matA = [2 3 4 2; 7 6 1 1]

zeros(3, 4)
ones(3,2)
eye(3) %단위 행렬

matA = [2 5 3 4; 1 5 4 3; 4 4 5 6]
matA(3,2) %함수가 아님 (주의)
% matA(-1, 1)
matA(1, 2:4)
matA(1, 1:2:3)
% matA(1, 1 2 3) -> 1 2 3 자체가 없는 표현이기 때문에 에러 발생
matA(1, [1 2 3])
matA(1, 1:3)
matA(1, [1:3])

1; 2; 3

matA(2, :) %전체를 모두 출력해줌

matA = [2 5 3 4; 1 5 4 3; 4 4 5 6]
matA(4, :) = [2:3:11] %matA에 4행에 새로운 행렬 추가
matA(3, 2) = 1

matB = eye(4); matC = ones(2, 4);
matD = [ matA matB ]
matE = [matA; matC]

verA = 2:3:13
verA(3)
verA(3) = []

disp(verA)

exString = 'My name is seojin'
exString(5)
exString(8) = '-'

A = [1 2 4; 2 3 1; 5 0 3]
B = [2 -1 3; 2 4 2; 3 6 1]
C = A+B

C + 3 % 원래는 수학적으로 틀린 표현 

matA = [2 3; 1 3; 4 7]
matC = [5 7; -2 -3]

matA * matC

matA = [ 4 -2 6; 2 8 2; 6 10 3];
vecB = [ 8; 4; 0 ];
det(matA) % 역행렬을 구할 수 있는 경우 이 값이 0이라면 역행렬을 수할 수 없음.

vecX = inv(matA)*vecB

verX2 = matA\vecB
% vecX2 = matB/matA 사용 불가 => because, 교환법칙이 성립하지 않기 때문에 

A = [1 1; 2 2]
B = [1 2; 3 4]

A*B
A.*B
A.*2

x = [1:9];
y = 2*x.^2 -6*x

% y = 2*x^2 -6*x -> 이렇게 하면 행렬 계산이 되지 않음. 
% plot(x,y)

