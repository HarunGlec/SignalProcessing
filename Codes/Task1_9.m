clear all

a=imread('Duke390.jpg');%to read image

b=a(100:116,100:116,:); %to crop a small part with size data from original picture

subplot(1,2,1)
imshow(a) % show original picture
title('Original Image')
subplot(1,2,2)
imshow(b) % show cropped picture
title('Cropped Image')
