% Homework 5 정서진(2024112396)

%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('[Prob 1]\n')

y1 = linspace(0, 24, 100);
vol = VolFuel(y1);

plot(y1, vol);
pause;
close all
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('[Prob 2]\n')

[r1,th1] = AddVecPol(5,23,12,40);
[r2,th2] = AddVecPol(6,80,15,125);

fprintf('r(5,23,12,40)   = %.3f\n',r1);
fprintf('th(5,23,12,40)  = %.3f\n', th1);
fprintf('r(6,80,15,125)  = %.3f \n',r2);
fprintf('th(6,80,15,125) = %.3f\n\n', th2);

pause;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('[Prob 3]\n')

A = [1 3 2; 6 5 4; 7 8 9];
B = [-2.5 7 1; 5 -3 -2.6; 4 2 -1];

detA = det3by3(A);
detB = det3by3(B);

fprintf('det (a) : %.3f\n',detA)
fprintf('det (b) : %.3f\n',detB)
disp(' ');
pause;
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fprintf('[Prob 4]\n')

thr_to_six = ProLottery(3,6,49);
% (a)
fprintf('(a)\n')

fprintf('probability : %.3f\n', thr_to_six)
% (b)
fprintf('(b)\n')

per = [];
for i = 1:7
    Game = ProLottery(i-1,6,49);
    per(i,1) = i-1;
    per(i,2) = Game;
end
fprintf('num  percent\n')
for i = 1:7
    fprintf('%2d\t%9.6f\n', per(i, :));
end