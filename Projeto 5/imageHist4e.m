%UNIVERSIDADE FEDERAL DO AMAZONAS
%FACULDADE DE TECNOLOGIA
%GPRP&O - GRUPO DE PESQUISA EM RECONHECIMENTO DE PADRÕES E OTIMIZAÇÃO
%FTL079 - PROCESSAMENTO DIGITAL DE IMAGENS
%PROJETO 5 - Histogram
%ARQUIVO - imageHist4e.m
%AUTOR - Diego Giovanni de Alcântara Vieira
%AUTOR - Lucas Lima de Oliveira
%--------------------------------------------------------------------------
% This function returns a histogram from a 256 level image
% based on https://stackoverflow.com/questions/29853497/normalization-of-an-image
%--------------------------------------------------------------------------

function imageHist4e(f,mode,str)
    filename_n = strcat('histograma-normalizado-',str);
    filename_u = strcat('histograma-nao-normalizado-',str);
    if mode == 'n'
        f_med = mean(f,3); %calcula o valor medio
        f_norm = (f_med-min(f_med(:))) / (max(f_med(:))-min(f_med(:))); %normaliza a imagem
        h1 = figure('Name','Histograma Normalizado','NumberTitle','off');
        imhist(f_norm); %printa o histograma
        title(filename_n);
        saveas(h1,filename_n,'jpg');
    end
    if mode == 'u'
        h2 = figure('Name','Histograma Não-Normalizado','NumberTitle','off');
        imhist(f); %printa o histograma
        title(filename_u);
        saveas(h2,filename_u,'jpg');
    end
end