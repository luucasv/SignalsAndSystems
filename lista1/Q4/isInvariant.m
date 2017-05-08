function ret = isInvariant(S, iter)
% S is a system
% Will make iter iteretions tryng to find a example where the system is time variant
	ret = true;
	N = 100;
	limit = 50;
	for i = 1:iter
		x_1 = floor(2 * limit * rand(N, 1)) - limit; %[-limit, limit]
		tau = floor((N - 2)*rand()) + 1; % [1, N-1]
		x_2 = x_1(tau:N);
		
		y_1 = S(x_1);
		y_2 = S(x_2);
		if y_1(tau:N) != y_2
			ret = false;
		end
	end
end

