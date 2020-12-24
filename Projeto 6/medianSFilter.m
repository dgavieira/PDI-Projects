%UNIVERSIDADE FEDERAL DO AMAZONAS
%FACULDADE DE TECNOLOGIA
%GPRP&O - GRUPO DE PESQUISA EM RECONHECIMENTO DE PADRÕES E OTIMIZAÇÃO
%FTL079 - PROCESSAMENTO DIGITAL DE IMAGENS
%PROJETO 6 - 2D spatial Filteting
%ARQUIVO - medianSFilter.m
%AUTOR - Diego Giovanni de Alcântara Vieira
%AUTOR - Lucas Lima de Oliveira
%--------------------------------------------------------------------------
% This function returns a median filtered image. Applies replicate padding
%--------------------------------------------------------------------------
% Parameters
% f - image matrix
% w - neighboorhood size
%--------------------------------------------------------------------------
% Based on
% https://stackoverflow.com/questions/27535535/matlab-median-filter-code
%--------------------------------------------------------------------------

function g = medianSFilter(f,w)
    h1 = figure('Name','Imagem Original - medianSFilter','NumberTitle','off');
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
    h2 = figure('Name', 'Imagem com Padding - medianSFilter','NumberTitle','off');
    imshow(f_pad);
    title("padded image");
    saveas(h2,"Fig3-37-a-padded-replicate","jpg")
    %----------------------------------------------------------------------
    %applying median filtering
    im_col = im2col(f_pad, [w w], 'sliding'); % transforming each neighboorhood pixel into a single column vector
    sorted_cols = sort(im_col, 1, 'ascend'); % sorting the pixels for each row and column
    med_vector = sorted_cols(floor(w*w/2) + 1, :); %grabbing the middle value for sorted array - median filtering process
    filt_f = col2im(med_vector, [w w], size(f_pad), 'sliding'); %passing the filtered matrix to a image format
    h3 = figure('Name','Imagem Filtrada por Mediana - medianSFilter','NumberTitle','off');
    g = imshow(filt_f);
    title("median filtered image")
    saveas(h3,"Fig3-37-a-median-filtered","jpg")
end
