clc; clear; close all;
f = imread('polymercell.tif');
g = sobel(f, 0.35);

figure(1);
imshow(g);
title('Imagem com Bordas Filtradas');