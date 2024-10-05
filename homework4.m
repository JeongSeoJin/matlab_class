% Homework 4 정서진(2024112396)

fprintf("[Prob 1]\n")

row = 6; column = 4;

A = [];

% matrix comprised with '1'
% for j = 1:column
%     for i = 1:row
%         A(i, j)= 1;
%     end
% end
% disp(A)

for j = 1:column
    for i = 1:row
        A(i, j)= 2*j - 3*i;
    end
end
disp(A)

pause

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 2]\n")

x = [9 -1.5 13.4 13.3 -2.1 4.6 1.1 5 -6.1 10 0.2];

for j = 1:length(x)
    for i = 1:length(x)
        if (x(j) < x(i))
            a = x(j);
            x(j) = x(i);
            x(i) = a;
        end
    end
end
disp(x)
if (x == sort(x))
    fprintf("rearrangement complete!\n");
else
    fprintf("invalid\n");
end

pause

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 3]")

disp(" ")

n_vec = 0;
sum_result_vec = 0;

for n = 1:500
    summation = n * (n + 1) / 2;
    if (mod(summation, 111) == 0)
        if summation < 1000
            n_vec = n;
            sum_result_vec = summation;
        end

    end
end

table = [n_vec sum_result_vec];
disp(table)
pause 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("[Prob 4]")



pause