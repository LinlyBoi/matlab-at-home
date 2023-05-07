A = [3, -0.1, -0.2; 0.1, 7, -0.3; 0.3, -0.2, 10]
B = [7.85; -19.3; 71.4]
init = [0, 0, 0]


function solution = gauss_seidel(A,b,initial)
	for i = [1:length(A)]
		sigma = 0;
		for j = [1:length(A)]
			if(j != i)
			sigma = sigma + A(i,j) * initial(j)
		endif

	endfor
	initial(i) = (b(i) - sigma) / A(i,i)
endfor
solution = initial
endfunction

balls = gauss_seidel(A,B,init)
balls = gauss_seidel(A,B,balls)
