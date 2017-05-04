i = 1;

for N = [12]
  for M = [4, 5, 7, 10]
    n = (0:(2*N - 1))';
    y = X(n, N, M);
    figure(i);
    i = i + 1;
    stem(n, y);
    xlabel("n");
    ylabel(strcat("X_", num2str(M)));
    title(strcat("T = ", num2str(N / gcd(N, M))));
  end
end