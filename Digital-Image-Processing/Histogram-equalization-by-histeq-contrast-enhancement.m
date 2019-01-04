clc;
clear all;
close all;

im = imread('file:///C:/Users/walidamriou/a.jpg');

X=rgb2gray(im);
Hx=imhist(X); %  calcule de histogramme de image gray
J = histeq(X);
Hj=imhist(X); %  calcule de histogramme de image aprés l'egalisation

figure
subplot(231);imshow(im);title('Image Originals');
subplot(232);imshow(X);title('Image niveau de gris');
subplot(233);imshow(J);title('Image aprés ةgalisation de histogramme');
subplot(234);plot(Hx);title('Histogram de niveau de gris');
subplot(235);plot(Hj);title('Histogram aprés ةgalisation de histogramme');
