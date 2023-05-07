clear clc
# Bi section
pkg load symbolic;


f = @(x) 3*x.^2 - e.^x
a = 0
b = 1
syms x;
ff = f(x)
function root = newton(f, x0)
	if abs(f(x0)) < eps
		root = x0;
		return
	endif
	syms x;
	df = diff(f(x));
	ff = function_handle (df);
	x0 = x0 -( f(x0) / deriv(f,x0) )
	newton(f, x0)
endfunction

newton(f, 0.5)

function root = secant(f, x0, x1)
	if abs(f(x0)) < eps
		root = x0;
		return
	endif
	syms x;
	df = diff(f(x));
	ff = function_handle (df);
	temp = x1;
	x1 = x1 -( ( f(x1) * (x1 - x0) ) / ( f(x1) - f(x0) ) )
	x0 = temp;
	secant(f, x0,x1)
endfunction
secant(f, 1, 0)

