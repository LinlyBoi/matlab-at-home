


# upper matrix ballocks.
clear,clc
#U2 = -A(2,1)/A(1,1) * A(1, :) + A(2, :)
#U3 = -A(3,1)/A(1,1) * A(1, :) + A(3, :)
#U_temp = [A(1,:); U2; U3]
#U3 = -A(3,2)/U_temp(2,2) * U_temp(2, :) + U_temp(3, :)
#U = [A(1,:); U2; U3]
#L = [1, 0, 0; A(2,1)/A(1,1),1,0;(A(3,1)/A(1,1)),(A(3,2)/U_temp(2,2)),1]

# U_temp var = A (matrix)
# for i < n
# j = i + 1
	# for j <= n
	# U_temp(j, :) = -U_temp(j,i)/U_temp(j,i) * U_temp(i, :) + U_temp(j, :)

	A = [5,2,4;2,1,1;1,-5,-3];
	b = [17;0;13;];
	U_temp = A
	L_temp = eye(3);
	for i = [1:length(A)-1]
		for j = [i+1: length(A)]
			L_temp(j,i) = U_temp(j,i)/U_temp(i,i);
			U_temp(j, :) = -U_temp(j,i)/U_temp(i,i) * U_temp(i, :) + U_temp(j, :);
		endfor
	endfor
	U_temp
	L_temp
#another for loop that's like we create another matrix for Z
L_temp*U_temp\b
