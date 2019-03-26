clc;clear all;close all;
 
%%Taking input and refernce images
inimg=imread('lata.jpg');
referenceimg=imread('lena.jpg');
 
%%Separating channels of input and reference image
inimgr=inimg(:,:,1);
inimgg=inimg(:,:,2);
inimgb=inimg(:,:,3);
 
refeimgr=referenceimg(:,:,1);
refeimgg=referenceimg(:,:,2);
refeimgb=referenceimg(:,:,3);
 
%%Calculating histogram
hnipimgr=imhist(inimgr);
hnipimgg=imhist(inimgg);
hnipimgb=imhist(inimgb);
 
hnrefeimgr=imhist(refeimgr);
hnrefeimgg=imhist(refeimgg);
hnrefeimgb=imhist(refeimgb);
 
%%Calculating histogram specification using histogram of refimage
outr=histeq(inimgr,hnrefeimgr);
outg=histeq(inimgg,hnrefeimgg);
outb=histeq(inimgb,hnrefeimgb);
 
%%Output image Reformation
histsp(:,:,1)=outr;
histsp(:,:,2)=outg;
histsp(:,:,3)=outb;
 
%%plotting the outputs
figure()
subplot(1,3,1);imshow(inimg);title('inputimage');
subplot(1,3,2);imshow(referenceimg);title('refimage');
subplot(1,3,3);imshow(histsp);title('outputimage');
 
%%plotting the histograms 
figure()
subplot(3,3,1);plot(hnipimgr);title('inputimagehist1');
subplot(3,3,2);plot(hnipimgg);title('inputimagehist2');
subplot(3,3,3);plot(hnipimgb);title('inputimagehist3');
subplot(3,3,4);plot(hnrefeimgr);title('refimagehist1');
subplot(3,3,5);plot(hnrefeimgg);title('refimagehist2');
subplot(3,3,6);plot(hnrefeimgb);title('refimagehist3');
subplot(3,3,7);imhist(outr);title('outputimagehist1');
subplot(3,3,8);imhist(outg);title('outputimagehist1');
subplot(3,3,9);imhist(outb);title('outputimagehist1');

