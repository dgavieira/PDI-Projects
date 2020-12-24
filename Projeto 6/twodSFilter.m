%UNIVERSIDADE FEDERAL DO AMAZONAS
%FACULDADE DE TECNOLOGIA
%GPRP&O - GRUPO DE PESQUISA EM RECONHECIMENTO DE PADRÕES E OTIMIZAÇÃO
%FTL079 - PROCESSAMENTO DIGITAL DE IMAGENS
%PROJETO 6 - 2D spatial Filteting
%ARQUIVO - mainProj6.m
%AUTOR - Diego Giovanni de Alcântara Vieira
%AUTOR - Lucas Lima de Oliveira
%--------------------------------------------------------------------------
% This function returns kernel spatial filtering for three different
% masksizes: 3x3, 11x11 and 21x21
%--------------------------------------------------------------------------
% Parameters
% f - image matrix
% w - neighboorhood size
%--------------------------------------------------------------------------
% Based on
% http://www.decom.ufop.br/guillermo/BCC326/slides/Processamento%20de%20Imagens%20-%20Filtros%20Nao%20Lineares.pdf
%--------------------------------------------------------------------------
function g = twodSFilter(f, w)
    h1 = figure('Name','Imagem Original - twodSFilter','NumberTitle','off');
    imshow(f);
    title("original image");
    %----------------------------------------------------------------------
    %applying replicate padding
    row_padding = f(1:w,:);
    column_padding = f(:,1:w);
    borders = f(1:w,1:w);
    %creating the padded image matrix
    f_pad = [borders row_padding borders; %padding above the image
    column_padding f column_padding; %padding the image to the left and right
    borders row_padding borders]; %padding below the image
    %----------------------------------------------------------------------
    %showing padded image
    h2 = figure('Name','Imagem com Padding - twodSFilter','NumberTitle','off');
    imshow(f_pad);
    title("padded image");
    saveas(h2,"Fig3-37-a-padded-replicate-average","jpg")
    %----------------------------------------------------------------------
    %applying averaging spatial filtering
    filt_f = conv2(single(f_pad), ones(w)/(w.^2), 'full'); %perform full 2D convolution for padded image and kernel.
    h3 = figure('Name','Imagem Filtrada por Averaging - twodSFilter','NumberTitle','off');
    g = imshow(filt_f);
    title("median filtered image")
    saveas(h3,"Fig3-37-a-average-filtered-21x21","jpg")
end