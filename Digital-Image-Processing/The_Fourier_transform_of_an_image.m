close all; 
clear; 
clc; 
im = imread('file:///C:/Users/Dinosaur/a.jpg'); %read the image
im = double(rgb2gray(im))/255; %change the type of valures to double
IM = fft2(im); % fft2 for make the fourier transform to Imaginare of the number complexe
IM_sh = fftshift(IM); %rearranges a Fourier transform IM by shifting the zero-frequency component to the center of the array.
mod = abs(IM_sh);% mod=|IM_sh|
mod_log = log(1+mod);  % log of 1+|IM_sh|
phase = angle(IM_sh);  % the phase is angle of IM_sh
im_inverse = real(ifft2(ifftshift(IM_sh))); %the im_inverse is the real of the number complex

%visualisation 
figure; 
subplot(2,2,1); imshow(im); title('Image originale'); 
subplot(2,2,2);  imshow(mod_log,[]); title('TF echelle logarithmique centree'); 
subplot(2,2,3); imshow(phase,[]); title('la phase de la TF'); 
subplot(2,2,4); imshow(im_inverse); title('Image reconstruite'); 
