x = 1.8;
X = [1.7 1.9 2 2.1 2.3];
f = @(x) e.^x;
function solution = divided_diff(x, X, f)
	Sigma = 0;
	for j = [1:length(X)]
		w = 1;

		for k = [1:length(X)]
			if(j != k)
			w = w * ( X(j) - X(k) );
			endif
		endfor

		Sigma = Sigma + ( f(j) / w );
	endfor
	solution = Sigma;
endfunction
balls = divided_diff(x,X,f)

