% power model a * x ^ b
% y = a + b x
clear;clc;close all;
x = input("enter values of x:\n");
y = input("enter values of y:\n");
Y = log(y);
X = log(x);
n = length(x);
coeff = [n sum(X);sum(X) sum(X.^2)];
f_terms = [sum(Y);sum(X.*Y)];
results = inv(coeff) * f_terms;
A = results(1);
a = exp(A);
b = results(2);
f = a * x.^b;
plot(x, y,'', x, f);