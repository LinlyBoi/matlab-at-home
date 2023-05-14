% exponential model a * exp(b * x) 
% y = a + b x
clear;clc;close all;
x = input("enter values of x:\n");
y = input("enter values of y:\n");
Y = log(y);
n = length(x);
coeff = [n sum(x);sum(x) sum(x.^2)];
f_terms = [sum(Y);sum(x.*Y)];
results = inv(coeff) * f_terms;
A = results(1);
a = exp(A);
b = results(2);
f = a * exp(b*x);
plot(x, y,'',x, f);