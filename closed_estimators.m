clear clc
# Bi section
pkg load symbolic;

f = @(x) 3*x.^2 - e.^x
a = 0
b = 1
# bisection method
function root = bisection(f,a,b)
	counter = 0;
	while(true)
		c = (a + b) / 2;
		if (abs(f(c)) < eps) #break at f(c) < eps
			break
		endif
		if(f(c) * f(a) < 0) #find where c lies from the range
			b = c;
		else
			a = c;
		endif
counter+=1;
endwhile
counter
root = c
endfunction

function root = false_position(f,a,b)
	counter = 0;
	while(true)
		c = (a*f(b) - b*f(a)) / (f(b) - f(a));#literally the only difference from bisection
		if (abs(f(c)) < eps) #break at f(c) < eps
			break
		endif
		if(f(c) * f(a) < 0) #find where c lies from the range
			b = c;
		else
			a = c;
		endif
counter += 1;
endwhile
counter
root = c
endfunction

printf("FALSE POSITION!!!!")
false_position(f,a,b);
printf("BIIIIIIIYYEEEEEEE")
bisection(f,a,b);


