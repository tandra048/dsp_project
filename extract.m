clear all;
close all;
clc
img = imread('image\yellow.jpg');
if size(img, 3) == 3
    img = rgb2gray(img);
end


% Get the size of the image
[rows, cols] = size(img);

% Initialize a figure to display the bit planes
figure;

for k = 1:8
    % Extract the k-th bit plane
    bit_plane = bitget(img, k);
    
    % Display the bit plane
    subplot(2, 4, k);
    imshow(logical(bit_plane));
    title(['Bit Plane ', num2str(k)]);
end
