function integral_val = integral_changing_x(func, x)

a = 3;
integral_values = zeros(7);

for i=1:7
    integral_values(i) = integral(@(t)func(a, t), 0, x(i));

end

disp(integral_values)
