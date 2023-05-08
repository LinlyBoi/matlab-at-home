clear,clc
f = @(x) x.^2 + 3*x - 1 + 5*x.*sin(x);
pkg load symbolic
syms x;
ff = f(x);
% now calculate the derivative of the function
ffd = diff(ff, x)
