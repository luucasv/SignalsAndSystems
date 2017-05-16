x = [100,120,124,125,122,123,154,21,23,22,28,21,21,22,255,252];
ker = [1, -1];
y = my_conv(x, ker)
%{
	y =
    20     4     1    -3     1    31  -133     2    -1     6    -7     0     1   233    -3
	
	Com isso percebemos que a convolução nos ajudou a dar maior destaque para as 
	mudanças grandes na escala dos valores(o que pode se caracterizar como borda).
%}