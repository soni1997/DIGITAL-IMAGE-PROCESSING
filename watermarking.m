clc; close all; clear all;
 
iorg = imread('lena.jpg');
igray = rgb2gray(iorg);
img=double(igray);
 
wname = 'sym4';
[a,h,v,d] = dwt2(img,wname);
 
Signature_color = imread('lata.jpg');
Signature_gray= rgb2gray(Signature_color);
Sig=double(Signature_gray);
 
for i=1:116
    for j=1:116
        sig_new(i,j)=Sig(i,j);
    end
end
 
sig_new_gray=uint8(sig_new);
 
figure(1);
subplot(2,3,1);
imshow(igray);
title('Original image');
 
subplot(2,3,2);
imshow(sig_new_gray);
title('Signature');
 
subplot(2,3,3);
imshow(a);
title('a');
 
subplot(2,3,4);
imshow(h);
title('h');
 
subplot(2,3,5);
imshow(v);
title('v');
 
subplot(2,3,6);
imshow(d);
title('d');
 
figure(2)
water_img = idwt2(a,sig_new,sig_new,d,wname);
wat_im=uint8(water_img);
imshow(wat_im);
title('Water mark image');
 
%reconstruction of image
 
[a_water,h_water,v_water,d_water] = dwt2(water_img,wname);
figure(3);
Rec_sig=uint8(h_water);
subplot(1,2,1);
imshow(Rec_sig);
title('Reconstructed signature');
 
Rec_img = idwt2(a_water,h,v,d_water,wname);
Rec=uint8(Rec_img);
subplot(1,2,2);