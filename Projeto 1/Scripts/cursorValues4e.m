%UNIVERSIDADE FEDERAL DO AMAZONAS
%FACULDADE DE TECNOLOGIA
%GPRP&O - GRUPO DE PESQUISA EM RECONHECIMENTO DE PADR�ES E OTIMIZA��O
%FTL079 - PROCESSAMENTO DIGITAL DE IMAGENS
%PROJETO 1 - Extracting pixel values from grayscale images
%ARQUIVO - cursorValues4e.m
%AUTOR - Diego Giovanni de Alc�ntara Vieira
%--------------------------------------------------------------------------
% r - row
% c - column
% v - pixel value

function [r,c,v] = cursorValues4e(f)
    handle = figure(1); %set an image handle
    image = imread(f); %read the image
    [r,c,v] = impixel(image); %get the image pixel and coordinates
    saveas(handle,'girl','tiffn') %save image from handle as girl filename 
    %and tif non-compressed file format
end