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


function y = newt_diff_fr(Y,X,x,h)
	idx = find(X==x);
	if (idx == length(X))
		elems = [X(idx), X(idx-1)]
		y = b_newt_diff1(elems,h)

	elseif (idx == 1)
		elems = [X(idx), X(idx+1)]
		y = f_newt_diff1(elems,h)
	else
		elems = [X(idx), X(idx+1)]
		y = c_newt_diff1(elems,h)
	endif
	endfunction













function y = f_newt_diff2(Y,h)
	Y =  ( Y(3) - 2 * Y(2) + Y(1) ) / h^2
end

function y = c_newt_diff2(Y,h)
	Y = ( Y(3) - 2 * Y(2) + Y(1) ) / h^2
end


function y = b_newt_diff2(Y,h)
	y =  ( Y(1) - 2 * Y(2) + Y(3) ) / h^2
end
