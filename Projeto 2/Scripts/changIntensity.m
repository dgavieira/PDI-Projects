function changIntensity(f)
    imagem = imread(f);
    handler = figure(1)
    h1 = subplot(2,2,1)
    image = imshow(imagem,[0 255]);
    title("256 intensity levels")
    h2 = subplot(2,2,2)
    image2 = imshow(imagem,[0 128]);
    title("128 intensity levels")
    h3 = subplot(2,2,3)
    image3 = imshow(imagem, [0 64]);
    title("64 intensity levels")
    h4 = subplot(2,2,4)
    image4 = imshow(imagem, [0 32]);
    title("32 intensity levels")
    saveas(handler, 'four-images','jpg')
end
