%UNIVERSIDADE FEDERAL DO AMAZONAS
%FACULDADE DE TECNOLOGIA
%GPRP&O - GRUPO DE PESQUISA EM RECONHECIMENTO DE PADRÕES E OTIMIZAÇÃO
%FTL079 - PROCESSAMENTO DIGITAL DE IMAGENS
%PROJETO 1 - Extracting pixel values from grayscale images
%ARQUIVO - main.m
%AUTOR - Diego Giovanni de Alcântara Vieira
%--------------------------------------------------------------------------

clear all; clc; %clear workspace and console
%Requesting the image file name
img_name = input('Input file name (without extension):','s');
%Requesting the image file format extension
img_type = input('Input file extension (without dot mark):','s');
p = '.'; %introducing the dot separating file name and extension
%concatenate strings file name, dot and file extension
f = strcat(img_name, p, img_type);
%--------------------------------------------------------------------------
[row,column,layer] = size(f); %get image parameters: rows, columns, layers
%obtain the bit depth
info = imfinfo(f); %obtain image infos
bit_depth = info.BitDepth; %obtain the bit depth
fprintf("image bit depth: %d \n", bit_depth) %print the bit depth
fprintf("number of rows: %d \n", row) %show number of rows from input image
fprintf("number of columns: %d \n", column) %show number of columns from input image
fprintf("number of layers: %d \n", layer) %show the number of layers
%--------------------------------------------------------------------------
%request desired row and column from user
M = double(input('Input desired row: ','s'));
N = double(input('input desired column: ','s'));
%parse parameters - image, desired row, desired column
v = pixVal4e(f,M,N) %calls first function
%--------------------------------------------------------------------------
[r,c,v] = cursorValues4e(f) %calls second function
close(1) %close the image handler after flag (keyboard or right click)
