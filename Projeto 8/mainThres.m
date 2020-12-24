clc; clear; close all;
f = imread('rice-shaded.tif');
figure(1);
imshow(f);
title('Imagem Original em Escala de Cinza');

g = globalThresh(f, 0.01);

figure(2);
d=im2bw(f,g);
imshow(d);
title('Limiar Global');
