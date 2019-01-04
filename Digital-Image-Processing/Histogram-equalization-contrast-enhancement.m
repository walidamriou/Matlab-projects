clc;
clear all;
close all; 
im=imread('file:///C:/Users/walidamriou/a.jpg');
X=rgb2gray(im);
[m n]=size(X);
Hi=imhist(X); % 1- calcule de histogramme
Nbp=m*n;%calcule de pixels de l'image
Hni=Hi./Nbp; % 2- Normalisation de histogramme
Ci=Hni;
 for i=2:256;
    Ci(i)=Ci(i-1)+Hni(i);
 end
F=X; % F is the new image and X is the image in gray
for i=1:m
    for j=1:n
        F(i,j)=Ci(X(i,j)+1)*255;%we add  1 to start with Ci(1) because we dont had Ci(0)
    end
end
figure
subplot(231);imshow(im);title('Image Originals');
subplot(232);imshow(X);title('Image niveau de gris');
subplot(233);imshow(F);title('Image aprés ةgalisation de histogramme');
subplot(234);plot(Hi);title('Histogram de niveau de gris');
subplot(235);plot(imhist(F));title('Histogram aprés ةgalisation de histogramme');
