clear all;
close all;
clc

img1 = imread('colorful.jpg');
img2 = imread('yellow.jpg');
img2 = imresize(img2, size(img1(:,:,1)));  % Resize img2 to the size of img1
img_add = imadd(img1, img2);
img_sub = imsubtract(img1, img2);
img_mul = immultiply(img1, img2);
img_div = imdivide(img1, img2);
figure;
subplot(2,2,1); imshow(img1); title('Image 1');
subplot(2,2,2); imshow(img2); title('Image 2');
subplot(2,2,3); imshow(img_add); title('Addition');
subplot(2,2,4); imshow(img_sub); title('Subtraction');

figure;
subplot(1,2,1); imshow(img_mul); title('Multiplication');
subplot(1,2,2); imshow(img_div); title('Division');
