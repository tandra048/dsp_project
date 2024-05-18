% Read an image
originalImage = imread('flower.jpg');

% Convert the image to grayscale if it is not already
if size(originalImage, 3) == 3
    grayImage = rgb2gray(originalImage);
else
    grayImage = originalImage;
end

% Add Gaussian noise
gaussianNoiseImage = imnoise(grayImage, 'gaussian', 0, 0.01); % mean=0, variance=0.01

% Add Salt & Pepper noise
saltPepperNoiseImage = imnoise(grayImage, 'salt & pepper', 0.02); % noise density=0.02

% Add Poisson noise
poissonNoiseImage = imnoise(grayImage, 'poisson');

% Add Speckle noise
speckleNoiseImage = imnoise(grayImage, 'speckle', 0.04); % variance=0.04

% Display the original and noisy images
figure;

subplot(2, 3, 1);
imshow(originalImage);
title('Original Image');

subplot(2, 3, 2);
imshow(gaussianNoiseImage);
title('Gaussian Noise');

subplot(2, 3, 3);
imshow(saltPepperNoiseImage);
title('Salt & Pepper Noise');

subplot(2, 3, 4);
imshow(poissonNoiseImage);
title('Poisson Noise');

subplot(2, 3, 5);
imshow(speckleNoiseImage);
title('Speckle Noise');
