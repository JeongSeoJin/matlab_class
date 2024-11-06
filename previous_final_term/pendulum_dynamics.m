% 사용자 정의 함수 정의 (입력 인자 2개)
function dTheta_dt = pendulum_dynamics(~, theta)
    % 고정된 매개변수 설정
    g = 9.81;  % 중력 가속도
    L = 2;  % 진자의 길이
    c = 0.2;  % 공기 저항 계수
    m = 0.25;  % 질량

    % theta(1): 각도
    % theta(2): 각속도 (각도 변화율)

    % 공기 저항력 f(theta) 계산
    air_resistance = c * theta(2) / m;

    % 연립 미분방정식
    dTheta_dt = zeros(2, 1);
    dTheta_dt(1) = theta(2);  % d(theta)/dt = 각속도
    dTheta_dt(2) = (-g/L) * sin(theta(1)) - air_resistance;  % d(각속도)/dt
end

