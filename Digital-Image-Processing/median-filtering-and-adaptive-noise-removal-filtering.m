clc;
clear all;
close all;
 
im=imread('file:///C:/Users/walidamriou/a.jpg');
X=rgb2gray(im);
[m n]=size(X);
Hi=imhist(X); % calcule histogramme
Nbp=m*n; %calcule pixels of the image

%add noise 
A = imnoise(X,'gaussian'); %add a gaussian noise to a the image 
B = imnoise(X,'poisson'); %add a poisson noise to a the image
C = imnoise(X,'salt & pepper'); %add a salt & pepper noise to a the image

%filter 

%image 1
AA=medfilt2(A); % Perform 2-D median filtering
AAA=wiener2(A); % Perform 2-D adaptive noise-removal filtering

%image 2
BB=medfilt2(B);
BBB=wiener2(B);

%image 3
CC=medfilt2(C);
CCC=wiener2(C);


figure
subplot(2,4,1);imshow(X);title('Image niveau de gris');
subplot(2,4,2);imshow(A);title('Image aprés Bruit gaussian');
subplot(2,4,3);imshow(AA);title('Image aprés Filter medfilt2');
subplot(2,4,4);imshow(AAA);title('Image aprés Filter wiener2');

subplot(2,4,5);plot(Hi);title('Histogram de niveau de gris');
subplot(2,4,6);plot(imhist(A));title('Histogram aprés Bruit de gaussian');
subplot(2,4,7);plot(imhist(AA));title('Histogram aprés Filter medfilt2');
subplot(2,4,8);plot(imhist(AAA));title('Histogram aprés Filter wiener2');

figure
subplot(2,4,1);imshow(X);title('Image niveau de gris');
subplot(2,4,2);imshow(B);title('Image aprés Bruit poisson');
subplot(2,4,3);imshow(BB);title('Image aprés Filter medfilt2');
subplot(2,4,4);imshow(BBB);title('Image aprés Filter wiener2');

subplot(2,4,5);plot(Hi);title('Histogram de niveau de gris');
subplot(2,4,6);plot(imhist(B));title('Histogram aprés Bruit de poisson');
subplot(2,4,7);plot(imhist(BB));title('Histogram aprés Filter medfilt2');
subplot(2,4,8);plot(imhist(BBB));title('Histogram aprés Filter wiener2');


figure
subplot(2,4,1);imshow(X);title('Image niveau de gris');
subplot(2,4,2);imshow(C);title('Image aprés Bruit salt & pepper');
subplot(2,4,3);imshow(CC);title('Image aprés Filter medfilt2');
subplot(2,4,4);imshow(CCC);title('Image aprés Filter wiener2');

subplot(2,4,5);plot(Hi);title('Histogram de niveau de gris');
subplot(2,4,6);plot(imhist(C));title('Histogram aprés Bruit de salt & pepper');
subplot(2,4,7);plot(imhist(CC));title('Histogram aprés Filter medfilt2');
subplot(2,4,8);plot(imhist(CCC));title('Histogram aprés Filter wiener2');
