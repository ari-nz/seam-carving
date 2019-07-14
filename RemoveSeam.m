function [ reducedImage ] = RemoveSeam( img, seam )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[m,n,~] = size(img);
reducedImage=zeros(m,n-1,3, 'uint8');


for i = 1:m
reducedImage(i,1:end,1:3) = RemovePixelFromRow(img(i,1:end,1:3), seam(i));

end

%reducedImage = unit8(reducedImage)
end