X = [2 2.2 2.4 2.6 2.8]
Y = [0.52 0.63 0.85 1.1 1.3]

function solution = lagranjames(X,Y,x)
	L = 0;
	for k = [1:length(X)] # Summation loop

		l = 1;
		for i = [1:length(X)] # Product loop
			if ( i != k ) # no 0s in our bottom fraction
			l = l *  ( x - X(i) ) / ( X(k) - X(i) ); # This the Π part of the rule
			endif
		endfor
		L = L + l * Y(k); # This is the sigma part
	endfor
	solution = L;

endfunction
balls = lagranjames(X,Y,2.3)
