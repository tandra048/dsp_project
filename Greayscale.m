% Step 1: Read the original image
originalImage = imread('design.jpg'); 

% Step 2: Convert the image to grayscale
grayImage = rgb2gray(originalImage);

% Step 3: Display both the original and grayscale images
figure;
subplot(1, 2, 1);
imshow(originalImage);
title('OriginalImage');

subplot(1,2,2);
imshow(grayImage);
title('Gray Image');
