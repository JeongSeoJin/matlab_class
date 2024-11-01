function [r, th] = addvec(r1, th1, r2, th2)
    x1 = r1 * cosd(th1);
    y1 = r1 * sind(th1);
    x2 = r2 * cosd(th2);
    y2 = r2 * sind(th2);

    addx = x1 + x2;
    addy = y1 + y2;
    r = sqrt(addx^2 + addy^2);
    th = atan(addy/addx);
end
