close all; 
clear; 
clc; 
I = imread('file:///C:/Users/walidamriou/b.jpeg');
I2=rgb2gray(I);
c1=edge(I2,'roberts');
c2=edge(I2,'sobel');
c3=edge(I2,'prewitt');
c4=edge(I2,'canny',0.6);

figure(1),
subplot(231);imshow(I);title('original');
subplot(232);imshow(c1);title('roberts');
subplot(233);imshow(c2);title('sobel');
subplot(234);imshow(c3);title('prewitt');
subplot(235);imshow(c4);title('canny');
