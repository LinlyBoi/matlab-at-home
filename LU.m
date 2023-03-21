


# upper matrix.
clear,clc
#U2 = -A(2,1)/A(1,1) * A(1, :) + A(2, :)
#U3 = -A(3,1)/A(1,1) * A(1, :) + A(3, :)
#U = [A(1,:); U2; U3]
#U3 = -A(3,2)/U(2,2) * U(2, :) + U(3, :)
#U = [A(1,:); U2; U3]
#L = [1, 0, 0; A(2,1)/A(1,1),1,0;(A(3,1)/A(1,1)),(A(3,2)/U(2,2)),1]

# U var = A (matrix)
# for i < n
# j = i + 1
	# for j <= n
	# U(j, :) = -U(j,i)/U(j,i) * U(i, :) + U(j, :)

	A = [5,2,4;2,1,1;1,-5,-3];
	b = [17;0;13;];
	U = A
	L = eye(3);
	for i = [1:length(A)-1]
		for j = [i+1: length(A)]
			L(j,i) = U(j,i)/U(i,i);
			U(j, :) = -U(j,i)/U(i,i) * U(i, :) + U(j, :);
		endfor
	endfor
	U
	L
#another for loop that's like we create another matrix for Z
L*U\b
