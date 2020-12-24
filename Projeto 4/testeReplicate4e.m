function testeReplicate4e(f,r,c,padtype)
    [rows, columns, layers] = size(f);
    if padtype == "replicate"
        row_padding = f(1:r,:);
        %imshow(row_padding)
        column_padding = f(:,1:c);
        %imshow(column_padding)
        borders = f(1:r,1:c);
        %imshow(borders)
        
        %creating the padded image matrix
        padded_matrix = [borders row_padding borders; %padding above the image
            column_padding f column_padding; %padding the image to the left and right
            borders row_padding borders]; %padding below the image
        h = figure(1);
        imshow(padded_matrix)
        title("padded image by replication")
        saveas(h,"testpattern1024-padded-replicate","tiffn")
    end
end
