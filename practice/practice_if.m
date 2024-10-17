x = input("input data : ");
n = length(x);
if (~n) % if (true) 이어야 실행. (~n)이 참이려면 n이 거짓 (없다)이어야함. 
    error("there is no input data")
end
avg = sum(x)/n;
fprintf("average : %.2f\n", avg)

% ====================== switch case =============
route = input("enter route : ")
switch route
    case 1
        fare = 1000;
    case 2
        fare = 1100;
    case {3, 4, 5} % 동시에 여러개를 지정 가능.
        fare = 1200;
    otherwise
        disp(['No info on ', int2str(route)])
        fare = 0;
end

% =========================== loop =====================
for k = 1:3:10;
    x = k^2; disp(x)
end

N = input("enter the num : ")
if N > 0
    f = 1;
    for i = 1:N
        f = f*i;
        disp(f)
    end
    fprintf("%d! = %d\n", N, f);
else
    fprintf("%d is negative, or zero.\n", N);
end

m = 1;
while m <= 7
    m = 2 * m
end

 