% poly a + b * x + c * x^2
clear;clc;close all;
x = input("enter values of x:\n");
y = input("enter values of y:\n");
n = length(x);
coeff = [n sum(x) sum(x.^2)
        sum(x) sum(x.^2) sum(x.^3)
        sum(x.^2) sum(x.^3) sum(x.^4)];
f_terms = [sum(y)
           sum(x.*y)
           sum((x.^2).*y)];
results = inv(coeff) * f_terms;
a = results(1);
b = results(2);
c = results(3);

f = a + b .* x + c .* x.^2;
plot(x, y, '', x, f);