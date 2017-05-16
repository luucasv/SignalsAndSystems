ker = [-1, 1, 1; -1, 1, 1; -1, 1, 1];
s = sum(sum(ker));
ker = ker / s;
img = imread('imagem.jpg');
before = uint8(img); % if on matlab before = rgb2gray(img)
after = uint8(my_conv2d(before, ker));
imshow(after);

%{
	A minha tentativa foi fazer um kernel que conseguisse usar a tecnica de embaçar um pouco a imagem
	e ao mesmo tempo tentar evidenciar as bordas. Pois com isso a imagem ficaria um pouco mais 
	"uniforme", mas n perderia suas caracteristicas importates de borda.
	Ẽntão pensei em distribuir um peso de magnitude igual para cada pixel, mas invertendo o sinal
	da primeira colunca (como no kernel de detecção de bordas)
	O resultado foi bem próximo do esperado.
%}
