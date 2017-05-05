for N = [12]
  for M = [4, 5, 7, 10]
    n = (0:(2*N - 1))';
    y = X(n, N, M);
    makeNiceStem(n, y, strcat("X_", num2str(M)) ,strcat("T = ", num2str(N / gcd(N, M))), 'n', strcat("X_", num2str(M)));
  end
end