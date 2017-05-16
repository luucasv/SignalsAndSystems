ker = [0, 0, 0; 0, 1, 0; 0, 0, 0];

img = imread('imagem.jpg');
before = uint8(img); % if on matlab before = rgb2gray(img)/
after = uint8(my_conv2d(before, ker));
imshow(after);
figure;


%{
    As imagens obtidas são iguais, pois basicamantes estamos aplicando um
    filtro que replica o pixel na sua posição.
%}