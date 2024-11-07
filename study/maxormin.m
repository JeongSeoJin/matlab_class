function [x, y, w] = maxormin(a, b, c)

x = -b/2*a;
func = @(x)a*x.^2+b*x + c;
y = func(x);
if a > 0
    w = 2;
else a < 0
    w = 1;
end