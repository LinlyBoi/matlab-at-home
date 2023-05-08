clear, clc, close all
#xf = [0:0.05:10];
#Yf = sin (2*pi*xf/5);
#xp = [0:10];
#Yp = sin (2*pi*xp/5);
#lin = interp1 (xp, Yp, xf);
#near = interp1 (xp, Yp, xf, "nearest");
#pch = interp1 (xp, Yp, xf, "pchip");
#spl = interp1 (xp, Yp, xf, "spline");
#plot (xf,Yf,"r", xf,near,"g", xf,lin,"b", xf,pch,"c", xf,spl,"m",
#      xp,Yp,"r*");
#legend ("original", "nearest", "linear", "pchip", "spline");
x = [0 4 8 12];

y = [5 3 10 13];

n = length(x);

Y = log(y);

coeff = [sum(x) n; sum(x.^2) sum(x)];

free = [sum(Y); sum(x.*Y)];

V = coeff\free # inv(coeff) * free

A = V(1)
#exp:
a = exp(A)

b = V(2)

Sr = (sum(Y - a*x - b).^2)

f = a*x + b;

plot(x,y,'*',x,f)

