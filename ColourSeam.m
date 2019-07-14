function [ img ] = ColourSeam(img, seam)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here


for i = 1:length(seam)
    img(i,seam(i),1:3) = 0;
    img(i,seam(i),1) = 255;

end

end
