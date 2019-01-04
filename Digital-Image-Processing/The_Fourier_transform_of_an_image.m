close all; 
clear; 
clc; 
im = imread('file:///C:/Users/Dinosaur/a.jpg'); %read the image
im = double(rgb2gray(im))/255; %
IM = fft2(im);
IM_sh = fftshift(IM); 
mod = abs(IM_sh);
mod_log = log(1+mod); 
phase = angle(IM_sh); 
im_inverse = real(ifft2(ifftshift(IM_sh)));

%visualisation 
figure; 
subplot(2,2,1); imshow(im); title('Image originale'); 
subplot(2,2,2);  imshow(mod_log,[]); title('TF echelle logarithmique centree'); 
subplot(2,2,3); imshow(phase,[]); title('la phase de la TF'); 
subplot(2,2,4); imshow(im_inverse); title('Image reconstruite'); 
