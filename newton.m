clc
clear
%b = [4;9;2];
%A = [3 4 5; 1 3 1; 3 5 9;]; % must be ; in here
%x = A \ b %% balls
function line_equation = line_func(x)
  line_equation = 3 * x^2 - e()^x
endfunction

function root = newton_method(a, b, e)
  c = (a + b) / 2
  if( abs(line_func(c)) <= e)
    printf("root found!")
    root = c
    return
  endif

  if(line_func(c) < 0)
    newton_method(c,b,e)
  else
    newton_method(a,c,e)
  endif
endfunction

 newton_method(0,1,10^-10)
