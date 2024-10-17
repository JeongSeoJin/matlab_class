%way1 %parameter 을 이용한 방식 
t = 0:0.1:6*pi;
x = sqrt(t).*sin(2*t);
y = sqrt(t).*cos(2*t);
z = 0.5*t;
plot3(x,y,z,'k','linewidth',1)
grid on % display axes grid lines on the plot
xlabel('x'); ylabel('y'); zlabel('z') 

%way2 %바닥에 grid를 만들어두고 각 점마다 depth 를 가짐 -> 좌표로 표현 
x = -2:0.1:3; y = 1:0.1:4;
[X,Y] = meshgrid(x,y); %meshgrid를 사용해야하는 이유?
Z = X.*Y.^2./sqrt(X.^2+Y.^2); % Remind the element-wise operation
figure(2)
mesh(X,Y,Z)
figure(3)
surf(X,Y,Z)
figure(4)
contour(X,Y,Z) 

% additional video contents
