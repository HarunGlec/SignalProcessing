clear all
 
a=imread('Duke390.jpg'); %Read image
 
subplot(2,2,1)
imshow(a) % Show Original image
title('Original Image')
 
subplot(2,2,2)
imshow(a(:,:,1))% Show red layer of image
title('Red Layer Image')
 
subplot(2,2,3)
imshow(a(:,:,2))% Show Green layer of image
title('Green Layer Image')
 
subplot(2,2,4)
imshow(a(:,:,3))% Show Blue layer of image
title('Blue Layer Image')
