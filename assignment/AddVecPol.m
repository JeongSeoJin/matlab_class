% Homework 5 정서진(2024112396)

function [r ,th] = AddVecPol(r1, th1, r2, th2)
    x1 = r1*cosd(th1);
    y1 = r1*sind(th1);
    x2 = r2*cosd(th2);
    y2 = r2*sind(th2);

    x = x1 - x2;
    y = y1 - y2;

    r = sqrt(x^2+y^2);
    th = atan2d(y,x);
end