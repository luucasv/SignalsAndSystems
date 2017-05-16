ker = 1/9 * ones(3);

img = imread('imagem.jpg');
before = uint8(img); % if on matlab before = rgb2gray(img)
after = uint8(my_conv2d(before, ker));
imshow(after);
%{
	Com este kernel vemos que a imagem é um pouco embaçada, isso por que cada pixel ao redor do atual
	cotribiu igualmente para o pixel final resultante.
%}