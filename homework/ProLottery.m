% Homework 5 정서진(2024112396)

function P = ProLottery(m,r,n)

    function C = nCr(x,y)
        C = factorial(x)/(factorial(y)*factorial(x-y));
    end
    P = nCr(r,m)*nCr(n-r,r-m)/nCr(n,r);
end