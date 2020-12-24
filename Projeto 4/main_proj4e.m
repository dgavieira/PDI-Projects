%UNIVERSIDADE FEDERAL DO AMAZONAS
%FACULDADE DE TECNOLOGIA
%GPRP&O - GRUPO DE PESQUISA EM RECONHECIMENTO DE PADRÕES E OTIMIZAÇÃO
%FTL079 - PROCESSAMENTO DIGITAL DE IMAGENS
%PROJETO 4 - Developing Image Padding
%image
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
str = strcat(img_name, p, img_type);
%--------------------------------------------------------------------------
f = imread(str)
