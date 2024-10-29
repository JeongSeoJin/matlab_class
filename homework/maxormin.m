function [x, y, w] = maxormin(a, b, c)
    % 최대 또는 최소 x 좌표
    x = -b / (2 * a);
    % 해당 x에서의 함수 값
    y = a * x^2 + b * x + c;
    % 최대인지 최소인지 판단
    if a > 0
        w = 2; % 최소일 때
    else
        w = 1; % 최대일 때
    end
end