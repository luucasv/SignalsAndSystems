function y = sc(x)
	% y[n] = x[2*n]
	N = length(x);
	y = zeros(N, 1);
	for i = 1:(N/2)
		y(i) = x(2*i);
	end
end

