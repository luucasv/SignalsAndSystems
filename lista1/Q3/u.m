function y = u(t, tau)
  y = t;
  N = length(t);
  for i = 1:N
    if(t(i) >= tau)
      y(i) = 1;
    else
      y(i) = 0;
    end
  end
endfunction