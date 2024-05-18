% Step 1: Read the original image
originalImage = imread('marguerite.jpg'); 

% Step 2: Resize the image
resizedImage = imresize(originalImage, [256, 256]); % Resize to 256x256 pixels

% Step 3: Rotate the image
angle = 45 * pi/180;
rotatedImage = imrotate(originalImage, angle); % Rotate by 45 degrees

% Step 4: Adjust the brightness of the image
brightImage = imadjust(originalImage, [], [], 1.2); % Increase brightness

% Step 5: Convert the image to grayscale
grayImage = rgb2gray(originalImage);

% Step 6: Display all images
figure;

subplot(2, 3, 1);
imshow(originalImage);
title('Original Image');

subplot(2, 3, 2);
imshow(resizedImage);
title('Resized Image (256x256)');

subplot(2, 3, 3);
imshow(rotatedImage);
title('Rotated Image (45 degrees)');

subplot(2, 3, 4);
imshow(brightImage);
title('Brightened Image');

subplot(2, 3, 5);
imshow(grayImage);
title('Grayscale Image');

% Save the modified images
imwrite(resizedImage, 'resized_image.png');
imwrite(rotatedImage, 'rotated_image.png');
imwrite(brightImage, 'brightened_image.png');
imwrite(grayImage, 'grayscale_image.png');
