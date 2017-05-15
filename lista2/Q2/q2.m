ker = [0, 0, 0; 0, 1, 0; 0, 0, 0];

img = imread('imagem.jpg');
before = uint8(rgb2gray(img));
after = uint8(my_conv2d(before, ker));
subplot(1, 2, 1), imshow(before);
subplot(1, 2, 2), imshow(after);

%{
    As imagens obtidas s�o iguais, pois basicamantes estamos aplicando um
    filtro que replica o pixel na sua posi��o.
%}