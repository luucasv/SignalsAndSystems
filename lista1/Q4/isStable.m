function ret = isStable(S, iter)
% S is a system
% Will make iter iteretions tryng to find a example in wich the system is not stable
% see if function abs value grows for a constant input
	ret = true;
	N = 100;
	limit = 50;
	for i = 1:iter
		x = ones(N, 1) * i;
		seq_max = abs(S(x(1)));
		cnt = 0;
		for k = 2:N
			actual = abs(S(x(1:k))(k));
			if actual > seq_max
				cnt = cnt + 1; 
			end
			seq_max = max(seq_max, actual);
		end
		%if it grows at least 80% of the time, we can say it seems to not be stable
		if cnt >= 0.8*N
			ret = false;
		end
	end
end
