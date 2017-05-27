clear all

RGB=imread('deniz.jpg');
gray=rgb2gray(RGB);
figure
imshow(gray,'Border','tight')
title('Original Image')
[rows columns] = size(gray);
r=[1 -2 1];
for ii=1:rows
    y=MyConv(gray(ii,:),r);
    gray(ii,:)=y(2:length(gray(ii,:))+1);
end
for ii=1:columns
    y=MyConv(gray(:,ii),r);
    gray(:,ii)=y(2:length(gray(:,ii))+1);
end
figure
imshow(gray);
title('Filtered Image')
