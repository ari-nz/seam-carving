function [ LowestEnergy, UpdatedPath ] = FindLeastEnergyPathToPixel( col, energyvalue, leastenergypath, path)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

switch col
case 1
    UsefulValues = [Inf,leastenergypath(1:2)];
    
    
  
case length(leastenergypath)
    len1 = length(leastenergypath)-1;
    UsefulValues = [leastenergypath(len1:end),Inf];
   

   
otherwise
    UsefulValues =leastenergypath(col-1:col+1) ;
  
    

    
end




[low,I] = min(UsefulValues);
LowestEnergy = energyvalue + low;

UpdatedPath = [path{col + I - 2}, col];
end

