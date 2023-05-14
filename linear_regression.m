% linear regression
% y = a + b x
clear;clc;close all;
%x = input("enter values of x:\n");
%y = input("enter values of y:\n");
x = [1 2 3 4 5];
y = [2 3 4 5 6];
n = length(x);
coeff = [sum(x) n;sum(x) sum(x.^2)];
f_terms = [sum(y);sum(x.*y)];
results = coeff \ f_terms;
a = results(1);
b = results(2);
f = a + b * x;
plot(x, y,'', x, f);
aaaa = @(x) a*x + bl
