clear all
close all
clc

I=imread('image\bird.jpg');
figure
subplot(221)
imshow(I)
title('\bf\fontsize{20} Original Image')



Red=I;
Red(:,:,2)=0;
Red(:,:,3)=0;

subplot(222)
imshow(Red)
title('\bf\fontsize{20} Red')

Green=I;
Green(:,:,1)=0;
Green(:,:,3)=0;

subplot(223)
imshow(Green)
title('\bf\fontsize{20} Green')

Blue=I;
Blue(:,:,1)=0;
Blue(:,:,2)=0;

subplot(224)
imshow(Blue)
title('\bf\fontsize{20} Blue')