function g = sobel(f, threshold)
    f = double(f);
    g = zeros(size(f));
    
    %Máscaras de Sobel
    Mx = [-1 0 1; -2 0 2; -1 0 1];
    My = [-1 -2 -1; 0 0 0; 1 2 1];
    
    %Edge Detection
    for i = 1:size(f,1) - 2
        for j = 1:size(f,2) - 2
            %Aproximações de Gradiente
            Gx = sum(sum(Mx.*f(i:i+2, j:j+2))); 
            Gy = sum(sum(My.*f(i:i+2, j:j+2)));
            
            %cálculo da magnitude do vetor gradiente
            hip = Gx.^2 + Gy.^2;
            g(i+1, j+1) = sqrt(hip);           
        end
    end
    g = uint8(g);
    
    %thresholding
    th_value = threshold*100;
    g = max(g, th_value);
    g(g == round(th_value)) = 0;
    
    g = imbinarize(g);
end
