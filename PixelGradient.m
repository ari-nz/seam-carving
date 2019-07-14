function [ gradient ] = PixelGradient(pix2, pix1)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

R2 = double(pix2(1));
R1 = double(pix1(1));

G2 = double(pix2(2));
G1 = double(pix1(2));

B2 = double(pix2(3));
B1 = double(pix1(3));

gradient = (R2 - R1)^2 + (G2 - G1)^2 + (B2 - B1)^2;





end

