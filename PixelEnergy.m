function [ energy ] = PixelEnergy( img, row, col )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here


[totrows, totcols, ~] = size(img);





        
switch col
    
    case 1
        
    delx = PixelGradient(img(row,col+1, 1:3),img(row,totcols, 1:3))   ; 
    case  totcols
    delx =  PixelGradient(img(row,1, 1:3),img(row,col-1, 1:3));
    otherwise
    delx  = PixelGradient(img(row,col+1, 1:3),img(row,col-1, 1:3));
 end   
    
    
switch row
    
    case 1
       dely =PixelGradient(img(row+1,col, 1:3),img(totrows,col, 1:3)) ;
        
    case  totrows
       dely= PixelGradient(img(1,col, 1:3),img(row-1,col, 1:3));
    otherwise
        dely = PixelGradient(img(row+1,col, 1:3),img(row-1,col, 1:3));
end 
    

energy = delx + dely;
    




end
    
    
    
  