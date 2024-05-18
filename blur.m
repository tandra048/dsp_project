% Read the image
inputImage = imread('ju.jpg'); % Replace with your image file name

% Display the original image
subplot(1,2,1);
imshow(inputImage);
title('Original Image');

% Define the size and standard deviation of the Gaussian filter
filterSize = 15; % Size of the filter (e.g., 15x15)
sigma = 2; % Standard deviation of the Gaussian filter

% Create the Gaussian filter
gaussianFilter = fspecial('gaussian', filterSize, sigma);

% Separate the color channels
redChannel = inputImage(:,:,1);
greenChannel = inputImage(:,:,2);
blueChannel = inputImage(:,:,3);

% Apply the Gaussian filter to each color channel
blurredRed = imfilter(redChannel, gaussianFilter, 'same');
blurredGreen = imfilter(greenChannel, gaussianFilter, 'same');
blurredBlue = imfilter(blueChannel, gaussianFilter, 'same');

% Combine the blurred color channels into one image
blurredImage = cat(3, blurredRed, blurredGreen, blurredBlue);

% Display the blurred image
subplot(1,2,2);
imshow(blurredImage);
title('Blurred Image');
