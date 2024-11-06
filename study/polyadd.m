function p = polyadd(p1, p2, operation)
    a = length(p1);
    b = length(p2);
    if a-b > 0
        p2 = [zeros(1, a-b) p2];
    else
        p1 = [zeros(1, b-a) p1];
    end

    switch operation
        case 'add'
            p = p1+p2
        case 'sub'
            p = p1-p2
    end


