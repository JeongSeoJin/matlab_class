function [integral_area, err] = polyareaintegral(t, x, y)
    
    xt = x(t);
    yt = y(t);
    
    integral_area = trapz(xt, yt);
    
    if integral_area > 0
        integral_area = integral_area;
    elseif integral_area < 0
        integral_area = -integral_area;
    end
    
    q = polyarea(xt, yt);
    err = abs(integral_area - q);
