%UNIVERSIDADE FEDERAL DO AMAZONAS
%FACULDADE DE TECNOLOGIA
%GPRP&O - GRUPO DE PESQUISA EM RECONHECIMENTO DE PADRÕES E OTIMIZAÇÃO
%FTL079 - PROCESSAMENTO DIGITAL DE IMAGENS
%PROJETO 1 - Extracting pixel values from grayscale images
%ARQUIVO - pixVal4e.m
%AUTOR - Diego Giovanni de Alcântara Vieira
%--------------------------------------------------------------------------
% f - image path string
% M - number of rows
% N - number of columns

function v = pixVal4e(f,M,N)
    image = imread(f); %read image
    v = impixel(image,M,N); %get pixel values map according to parsed parameters
end
