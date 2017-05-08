function ret = isCausal(S, iter)
% S is a system
% Will make iter iteretions tryng to find a example where the system is not causal
	ret = true;
	N = 100;
	limit = 50;
	for i = 1:iter
		x = floor(2 * limit * rand(N, 1)) - limit; %[-limit, limit]
		y = S(x);
		for k = 1:N
			part_y = S(x(1:k));
			if y(k) != part_y(k)
				ret = false;
			end
		end
	end
end

