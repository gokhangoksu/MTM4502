clear all
close all
clc

X1=-2:0.01:2;
X2=-2:0.01:2;
[x1,x2]=meshgrid(X1,X2);
F=0.25*x1.^4-0.5*x1.^2+0.1*x1+0.5*x2.^2;
realFMin=min(min(F))
mesh(x1,x2,F)

figure
contourf(x1,x2,F)
hold on

%% Newton-Raphson
fprintf('Newton-Raphson Algorithm\n');
% x=rand(2,1);
x=[-1;1];
epsilon=10^(-4);

tic
fprintf('k=1, x1=%f, x2=%f, f(x)=%f\n',x(1),x(2),func(x))
plot(x(1),x(2),'r.')
% TO BE WRITTEN...
fprintf('k=2, x1=%f, x2=%f, f(x)=%f, abs. error=%f\n',x_next(1),x_next(2),func(x_next),abs(func(x_next)-func(x)))
plot(x_next(1),x_next(2),'r*')
k=3;
%while(abs(func(x_next)-func(x))>epsilon)
while(norm(gradfunc(x_next))>epsilon)
    % TO BE WRITTEN...
end
toc
title('Newton-Raphson Algorithm')
set(gca,'fontsize',35)
set(findobj(gca, 'Type', 'Line', 'Linestyle', '--'), 'LineWidth', 2);

%% Hestenes-Stiefel Algorithm
figure
contourf(x1,x2,F)
hold on

fprintf('Hestenes-Stiefel Algorithm\n');
% x=rand(2,1);
x=[-1;1];
epsilon=10^(-4);

tic
fprintf('k=1, x1=%f, x2=%f, f(x)=%f\n',x(1),x(2),func(x))
plot(x(1),x(2),'r.')
% TO BE WRITTEN...
fprintf('k=2, x1=%f, x2=%f, f(x)=%f, abs. error=%f\n',x_next(1),x_next(2),func(x_next),abs(func(x_next)-func(x)))
plot(x_next(1),x_next(2),'r*')
k=3;
while(norm(gradfunc(x_next))>epsilon)
    % TO BE WRITTEN...
end
toc
title('Hestenes-Stiefel Algorithm')
set(gca,'fontsize',35)
set(findobj(gca, 'Type', 'Line', 'Linestyle', '--'), 'LineWidth', 2);