function [ EnergyImage ] = ImageEnergy(img)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here


[totrows totcols depth] = size(img);


for row = 1:totrows
    
   for col = 1:totcols
       
       EnergyImage(row,col) = PixelEnergy(img,row,col);
       
   end
end





end

