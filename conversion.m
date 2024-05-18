
clc
clear all
close all

% Step 1: Read the original image
originalImage = imread('image\girl.jpg'); 


% Step 2: Read the converted image
convertedImage = imread('converted_image.png');

% Step 3: Display the original and converted images
figure;
subplot(1, 2, 1);
imshow(originalImage);
title('Original Image');

subplot(1, 2, 2);
imshow(convertedImage);
title('Converted Image (PNG)');
