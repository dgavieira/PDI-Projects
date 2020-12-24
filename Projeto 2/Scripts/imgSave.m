function imgSave(f)
    imagem = imread(f);
    h1 = figure(1);
    img1 = imshow(imagem,[0 255]);
    title("256 intensity levels")
    saveas(h1, 'drip-bottle-0-255','tiffn')
    
    h2 = figure(2);
    img2 = imshow(imagem,[0 127]);
    title("128 intensity levels")
    saveas(h2, 'drip-bottle-0-127','tiffn')
    
    h3 = figure(3);
    img3 = imshow(imagem,[0 63]);
    title("64 intensity levels")
    saveas(h3, 'drip-bottle-0-63','tiffn')
    
    h4 = figure(4);
    img4 = imshow(imagem,[0 31]);
    title("32 intensity levels")
    saveas(h4, 'drip-bottle-0-31','tiffn')
    
    h5 = figure(5);
    img5 = imshow(imagem,[0 15]);
    title("16 intensity levels")
    saveas(h5, 'drip-bottle-0-15','tiffn')
    
    h6 = figure(6);
    img6 = imshow(imagem,[0 7]);
    title("8 intensity levels")
    saveas(h6, 'drip-bottle-0-7','tiffn')
    
    h7 = figure(7);
    img3 = imshow(imagem,[0 3]);
    title("4 intensity levels")
    saveas(h7, 'drip-bottle-0-3','tiffn')
end
