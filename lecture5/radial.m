function [r,theta]=radial(x,y)
%RADIAL produces a magnitude and an angle of a vector (x,y)
%Output r: magnitude
%Output theta: angle (rad)
%Written by J. Lee
%Modified: 2020. 11. 07,
%

r = sqrt(x.^2+y.^2);
theta = atan(y./x);

end