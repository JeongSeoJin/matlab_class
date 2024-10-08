2 > 3
% as a result, computer returns 'logical 0'

a = 3 > 6 % true or false -> logical variable
% a <- (3 > 6)
b = 2

(a == 3) > 6

(3>2) + (9<5) % 논리값을 그냥 덧셈하여 계산할 수 있음.

x = randperm(5)
y = randperm(5) % 1~5까지의 수를 랜덤으로 배열. 

z = (x > y) % 각각의 원소를 논리 비교를 통해서 대소관계 비교 가능.

x > 2 % 2보다 큰 위치만 1로 표현(참)
x(x>2) % 이 위치를 찾아서 그 위치의 값을 출력하여라. 
x(x>3) = -2 % 이 위치를 찾아서 그 위치에 -2를 대입해라.

%==================================
x = -10:10;
y = sin(x) ./ x;

plot(x, y);
grid on

x == 0 % x == 0인 위치만 참.
x = x+ (x == 0) * eps % eps = 0 --> x == 0인 위치를 찾아서 eps를 곱해줌. 

y = sin(x)./x;

plot(x, y)

3 | 0 & 2 & 0 %% ???
(3 | 0) & (2 & 0)

x = [1 2 5 9]
3 < x < 7
% -> (3<x) < 7 : 3이 x보다 작은지 계산한 결과 값에 대해서 7보다 작은지 판단. 때문에 모두 참. 
x(x>3) < 7 % 0 0 1 1값 에서 참인 값만 출력하는데 그가 7보다 작으면 참 반대이면 거짓. 
% 때문에 위의 코드는 5 9 가 각각 7보다 크거나 작은지 판단하여 logical value 를 출력하는 코드이다.
(3 < x) & (x < 7)  %원하는 값을 얻기 위해서는 이렇게.

ind = (3 < x) & (x < 7); x(ind)

% =====================================
% a == 1
% 이라는 논리 연산자 -> 변수일 때는 logical value를 출력하지만 행렬일 때는 logical value를 elements로 하는 행렬을 출력함.
% 다른 연산자들의 경우도 변수에 들어있는 것이 어떠한 값이라면 그 값과 비교하여 0또는 1인 logical value 를 출력하지만 들어있는 것이 행렬 혹은 벡터라면
% 연산자를 통해서 출력한 값인 logical value를 원소로 하는 행렬을 출력함.
a = [randperm(4); randperm(4); randperm(4)]
a == 4