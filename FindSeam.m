function [ SmallestPath ] = FindSeam( energy )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

[trow, tcol, ~] = size(energy);
pathmatrix = cell(trow,tcol);
for i = 1:tcol
pathmatrix{1,i} = i;
end


for row = 2:trow
    for col = 1:tcol
        
        
     [energy(row, col), pathmatrix{row,col}] = FindLeastEnergyPathToPixel(col, energy(row,col), energy(row-1, 1:end), pathmatrix(row-1, 1:end));
      
        
        
    end
end




[~,LowestPathValue] = max(energy(trow, 1:end));

SmallestPath = pathmatrix{trow, LowestPathValue};






end

