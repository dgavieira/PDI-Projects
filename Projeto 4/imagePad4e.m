%--------------------------------------------------------------------------
% FUNCTION EXPLAINING
% imagePad4e is a function for creating array padding.
% Parameters:
% f - the matrix input
% r - the number of padding rows above and below matrix input
% c - the number of padding columns to the left and right matrix input
% padtype - specifies the padding type required:
%   padtype = "replicate" - applies replicate padding
%   padtype = "zeros" - applies zeroing padding
%   padtype parsing ommited - applies zeroing padding
%--------------------------------------------------------------------------
function imagePad4e(f,r,c,padtype)
    %initiates zeroing padding routine
    if padtype == "replicate"
        padReplicate(f,r,c);
    end
    % initiates replicate padding routine
    if padtype == "zeros"
        padZeros(f,r,c);
    end
end

function padReplicate(f,r,c)
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
    h1 = figure(1);
    imshow(padded_matrix)
    title("padded image by replication")
    saveas(h1,"testpattern1024-padded-replicate","tiffn")
end

function padZeros(f,r,c)
    [rows, columns, ~] = size(f); % determine the size of image
    row_padding = zeros(r,columns,'uint8'); %creating the row padding
    column_padding = zeros(rows, c, 'uint8');%creating the column padding
    borders = zeros(r,c,'uint8'); %creating the borders padding, aimining 
    %to complete the full retangular matrix
    %creating the padded image matrix
    padded_matrix = [borders row_padding borders; %padding above the image
    column_padding f column_padding; %padding the image to the left and right
    borders row_padding borders]; %padding below the image
    h2 = figure(2);
    imshow(padded_matrix) %showing padded image by zeros
    title("padded imaged by zeros")
    saveas(h2,"testpattern1024-padded-zeros","tiffn")
end
    
