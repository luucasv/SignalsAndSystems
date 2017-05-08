function y = sb(x)
% y[n] = nx[n]
	N = length(x);
	y = x .* (1:N)';
end

