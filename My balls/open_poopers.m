clear clc
# Bi section
pkg load symbolic;


f = @(x) 3*x.^2 - e.^x #example function we use for every single thing
a = 0
b = 1
syms x;
function root = newton(f, x0)
	if abs(f(x0)) < eps #Breaking condition
		root = x0
		return
	endif
	x0 = x0 -( f(x0) / deriv(f,x0) ); # dividing by the derivative
	newton(f, x0)
endfunction

newton(f, 0.5)

function root = secant(f, x0, x1)
	if abs(f(x0)) < eps
		root = x0 # breaking condition
		return
	endif
	syms x;
	df = diff(f(x));
	ff = function_handle (df);
	temp = x1; # Temp variable for reassigning x0
	x1 = x1 -( ( f(x1) * (x1 - x0) ) / ( f(x1) - f(x0) ) ); #Formula that replaced y' in newton
	x0 = temp;
	secant(f, x0,x1)
endfunction
secant(f, 1, 0)

