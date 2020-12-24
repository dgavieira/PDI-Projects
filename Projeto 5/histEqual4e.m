%UNIVERSIDADE FEDERAL DO AMAZONAS
%FACULDADE DE TECNOLOGIA
%GPRP&O - GRUPO DE PESQUISA EM RECONHECIMENTO DE PADRÕES E OTIMIZAÇÃO
%FTL079 - PROCESSAMENTO DIGITAL DE IMAGENS
%PROJETO 5 - Histogram
%ARQUIVO - histEqual4e.m
%AUTOR - Diego Giovanni de Alcântara Vieira
%AUTOR - Lucas Lima de Oliveira
%--------------------------------------------------------------------------
% This function returns a 8 bit histogram equalization
% based on https://www.mathworks.com/matlabcentral/answers/299559-local-histogram-equalization-manually?s_tid=srchtitle
%--------------------------------------------------------------------------
function histEqual4e(I,str)

    filename_neq = strcat(str,'-Nao-Equalizado');
    filename_eq = strcat(str,'-Equalizado');
    h1 = figure('Name','Imagem Não-Equalizada','NumberTitle','off');
    imshow(I);
    title(filename_neq);
    saveas(h1,filename_neq,'jpg');
    %verifica o formato da imagem
    if(isa(I,'uint8'))
        I = double(I)/255;
    end
    windowsize = 17;
    %cria um array vazio
    Ieq = zeros(size(I,1),size(I,2));
    %aplica sobre uma região NxN para cada pixel - considera N impar
    n = floor(windowsize/2); %aplica um zero padding extra, pra não quebrar o codigo
    %realiza a equalização por histograma
    for r=1+n:size(I,1)-n
        fprintf('Processing row #%d\n',r); %sinaliza que a equalização está processando
        for c=1+n:size(I,2)-n
            %aplica a mediana no pixel lido em relação a linhas
            if r-n <= 1
                fromrow=1;
                torow=r+n;
            else
                %se não cumprir a condição, mantem o pixel igual ou pra
                %baixo valor - nivel de intensidade
                fromrow=abs(r-n);
                if n+r >= size(I,1)
                    torow=size(I,1);
                else
                    torow=r+n;
                end
            end
            %aplica a mediana no pixel lido em relação a colunas
            if c-n <= 1
                fromcol=1;
                tocol=c+n;
                %se não cumprir a condição, mantem o pixel igual ou pra
                %baixo valor - nivel de intensidade
            else
                fromcol=abs(c-n);
                if c+n > size(I,2)
                    tocol=size(I,2);
                else
                    tocol=c+n;
                end
            end
            %processa os calculos obtidos pixel a pixel para construir a
            %imagem equalizada
            neighbour = I(fromrow:torow,fromcol:tocol); %valor da vizinhança
            lessoreq = neighbour(neighbour<=I(r,c));
            sumofval = sum(lessoreq);
            pixval = sumofval/(size(neighbour,1)*size(neighbour,2));
            Ieq(r,c)=pixval;
        end
    end
    %mostra e salva a imagem equalizada
    h2 = figure('Name','Imagem Equalizada','NumberTitle','off');
    imshow(Ieq);
    title(filename_eq);
    saveas(h2,filename_eq,'jpg');
end