clear,clc
pkg load symbolic
f = inline('exp(x)')
h = 0.1;
x = [1.4 1.5 1.6]
y = f(x)
first_diff_forward_y = (y(3) - y(2)) / h
first_diff_backward_y = (y(2) - y(1)) / h
first_diff_central_y = (y(3) - y(1)) / (2*h)
syms x;
Y = exp(x);
Y1 = diff(Y)
Y2 = diff(Y,2)

YY1 = inline(Y1)
y1e = YY1(1.5)
YY2 = inline(Y2)
y2e = YY2(1.5)
M = [ first_diff_backward_y first_diff_central_y first_diff_forward_y]
RPE = (abs(y1e - M) / y1e) * 100

