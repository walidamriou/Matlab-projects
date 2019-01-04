clc;
clear all;
close all;
 
im=imread('file:///C:/Users/walidamriou/a.jpg');  %read the image to marix im

X=rgb2gray(im); % Image RGB to image gray to X 
[m n]=size(X); %get the valures of image size 3027x4541 to m x n 
X2=X; % copy the X to X2


for i=1:m;
   for j=1:n;
       X2(i,j)=255-X(i,j); %I'(x,y)=(2^8)-I(x,y)=255-I(x,y) 2^8 because the image code n 8 bits
   end
end
     
figure
subplot(231);imshow(im);title('Image Originals');
subplot(232);imshow(X);title('Image niveau de gris');
subplot(233);imshow(X2);title('Image négative');
