input = imread('tedros-cropped.png');
[R,G,B] = imsplit(input);
figure(1);
subplot(1,3,1)
imshow(R);
subplot(1,3,2)
imshow(G);
subplot(1,3,3)
imshow(B);

BW1 = edge(R, 'Canny');
BW2 = edge(R, 'Prewitt');
figure(2);
imshowpair(BW1,BW2,'montage')
BW3 = edge(R, 'Roberts')
figure(3);
imshow(BW3)