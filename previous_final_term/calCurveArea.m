function [intAns, absErr] = calCurveArea(t, fxt, fyt)
    % x(t), y(t) 계산
    xt = fxt(t);
    yt = fyt(t);

    % trapz를 이용한 면적 계산
    intAns = trapz(t, yt .* xt); % t를 기준으로 적분하여 면적 계산
    if intAns < 0
        intAns = -intAns;
    end

    % polyarea와의 차이 계산
    if length(xt) > 2 && length(yt) > 2
        % polyarea는 최소 3개의 점이 필요하므로 확인
        absErr = abs(polyarea(xt, yt) - intAns);
    else
        absErr = NaN; % 점이 부족할 경우 NaN으로 설정
        warning('polyarea 계산에 필요한 점이 부족하여 absErr를 NaN으로 설정했습니다.');
    end
end
