Y = [] %it doesn't like when I don't add this
function y = f_newt_diff1(Y,h)
	y = ( Y(2) - Y(1) ) / h
end

function y = c_newt_diff1(Y,h)
	y = ( Y(2) - Y(1) ) / ( 2 * h )
end


function y = b_newt_diff1(Y,h)
	y = ( Y(1) - Y(2) ) / h
end


function y = newt_diff_fr1(Y,X,x,h)
	idx = find(X==x);
	if (idx == length(X))
		elems = [Y(idx), Y(idx-1)]
		y = b_newt_diff1(elems,h)

	elseif (idx == 1)
		elems = [Y(idx), Y(idx+1)]
		y = f_newt_diff1(elems,h)
	else
		elems = [Y(idx-1), Y(idx+1)]
		y = c_newt_diff1(elems,h)
	endif
	endfunction

X = [0 1 2 3 4]
Y = X.^2
newt_diff_fr1(Y,X,1,1)











function y = f_newt_diff2(Y,h)
	y =  ( Y(3) - 2 * Y(2) + Y(1) ) / h^2
end

function y = c_newt_diff2(Y,h)
	y = ( Y(3) - (2 * Y(2)) + Y(1) ) / h^2
end


function y = b_newt_diff2(Y,h)
	y =  ( Y(1) - 2 * Y(2) + Y(3) ) / h^2
end





function y = newt_diff_fr2(Y,X,x,h)
	idx = find(X==x);
	if (idx == length(X)) %forwards
		elems = [Y(idx), Y(idx-1), Y(idx-2)]
		y = b_newt_diff2(elems,h)

	elseif (idx == 1) %backwards
		elems = [Y(idx), Y(idx+1), Y(idx+2)]
		y = f_newt_diff2(elems,h)
	else % centered
		elems = [Y(idx-1), Y(idx), Y(idx+1)]
		y = c_newt_diff2(elems,h)
	endif
	endfunction

