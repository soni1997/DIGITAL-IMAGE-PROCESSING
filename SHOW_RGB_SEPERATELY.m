clc;
clear all;
close all;
im = imread('Capture.JPG'); %read image
im1 = rgb2gray(im);
subplot(2,2,1);
imshow(im1);
imred = im(:,:,1); 
imgreen = im(:,:,2);
imblue = im(:,:,3);
allBlack = zeros(size(im, 1), size(im, 2), 'uint8'); %zero matrix

just_red = cat(3, imred, allBlack, allBlack);
just_green = cat(3, allblack, imgreen, allBlack);
just_blue = cat(3, allBlack, allBlack, imblue);
subplot(2,2,2);
imshow(just_red);
subplot(2,2,3);
imshow(just_green);
subplot(2,2,4);
imshow(just_blue);