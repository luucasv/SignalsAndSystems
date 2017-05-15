function y = my_conv(x1, x2)
	x2 = fliplr(x2);
	N = length(x1);
	M = length(x2);
	y = zeros(1, N-1);
	for i = 1:(N-M+1)
		y(i) = sum(x1(i:(i+M-1)) .* x2);
	end
end