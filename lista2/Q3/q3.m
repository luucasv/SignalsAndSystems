ker = 1/9 * ones(3);

img = imread('imagem.jpg');
before = uint8(rgb2gray(img));
after = uint8(my_conv2d(before, ker));
subplot(1, 2, 1), imshow(before);
subplot(1, 2, 2), imshow(after);
