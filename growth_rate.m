% growth rate model (a * x) / (b + x)
% y = a + b x
clear;clc;close all;
x = input("enter values of x:\n");
y = input("enter values of y:\n");
%x = [1,2,3,4,5,6]
%y = [2,4,6,8,10,12]
Y = y.^-1;
X = x.^-1;
n = length(x);
coeff = [n sum(X);sum(X) sum(X.^2)];
f_terms = [sum(Y);sum(X.*Y)];
results = inv(coeff) * f_terms;
A = results(1);
B = results(2);
a = 1 / A;
b = B * a;
f = (a.*x)./(b+x);
plot(x, y,'',x, f);
