function ret = isLinear(S, iter)
% S is a system
% Will make iter iteretions tryng to find a example in wich the system is not linear
	ret = true;
	N = 100;
	limit = 50;
	for i = 1:iter
		x_1 = floor(2 * limit * rand(N, 1)) - limit;%[-limit, limit]
		x_2 = floor(2 * limit * rand(N, 1)) - limit;%[-limit, limit]
		a_1 = floor(2 * limit * rand()) - limit;%[-limit, limit]
		a_2 = floor(2 * limit * rand()) - limit;%[-limit, limit]
		if S(a_1 * x_1 + a_2 * x_2) != a_1*S(x_1) + a_2*S(x_2)
			ret = false;
		end
	end
end
