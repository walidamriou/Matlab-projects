clc;
clear all;
close all;
 
im=imread('file:///C:/Users/walidamriou/a.jpg');
 
X=rgb2gray(im);
[m n]=size(X); % size(X)= 3027  4541 => m=3027 and n=4541

X3=imhist(X); % imhist for get the histogram of the image
a=max(max(X));
b=min(min(X));
c=a-b;
d=255/c;

for i=1:m;
   for j=1:n;
       X4(i,j)=(d*(X(i,j)-b));% this mean  (255/(min-max))(I(i,j)-min)
   end
end
     
figure
subplot(231);imshow(im);title('Image Originals');
subplot(232);imshow(X);title('Image niveau de gris');
subplot(233);imshow(X4);title('Image aprés Transformation linéaire');
subplot(234);plot(X3);title('Histogram de niveau de gris');
subplot(235);plot(imhist(X4));title('Histogram aprés Transformation linéaire');
