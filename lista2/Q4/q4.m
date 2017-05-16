ker = [-1, 0, 1; -2, 0, 2; -1, 0, 1];

img = imread('imagem.jpg');
before = uint8(img); % if on matlab before = rgb2gray(img)
after = uint8(my_conv2d(before, ker));
imshow(after);

%{
	Com este filtro, podemos ver um destaque grande para as bordas da imagem.
	É fácil perceber que o maior destaque está nas bordas dos objetos.
%}
