function y = my_conv2d(x1, x2)
	y = x1;
	[N1, M1] = size(x1);
	[N2, M2] = size(x2);

	half = floor(M2/2);
	x1 = padfill(x1, half);

	x2 = fliplr(x2);
	x2 = flipud(x2);
	for i = 1:N1
		for j = 1:M1
			y(i, j) = sum(sum(x1((i):(i+2*half), (j):(j+2*half)) .* x2));
		end
	end
end