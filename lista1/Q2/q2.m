n = (0:31)';
x1 = sin((pi / 4) .* n) .* cos((pi / 4) .* n);
x2 = cos((pi / 4) .* n) .^ 2;
x3 = sin((pi / 4) .* n) .* cos((pi / 8) .* n);

makeNiceStem(n, x1, 'x_1', "x_1[n] = sen(pi*n/4)cos(pi*n/4)", 'n', 'x_1[n]');

makeNiceStem(n, x2, 'x_2', "x_2[n] = cos(pi*n/4) ^ 2", 'n', 'x_2[n]');

makeNiceStem(n, x3, 'x_3', "x_3[n] = sen(pi*n/4)cos(pi*n/8)", 'n', 'x_3[n]');