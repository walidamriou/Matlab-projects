I = imread('file:///C:/Users/walidamriou/b.jpeg');
I2=rgb2gray(I);
h1=fspecial('laplacian');
h2=fspecial('log');
c1=filter2(h1,I2);
c2=filter2(h2,I2);

figure(1),
subplot(221);imshow(I);title('original');
subplot(222);imshow(c1);title('contours de laplacian');
subplot(223);imshow(c2);title('contours de laplacian of gaussian');
