

imgorig = imread('t2.jpg');
img=imgorig;
for i = 1:20
    EnergyImage=ImageEnergy(img);
    Seam = FindSeam(EnergyImage);
    NewImage = ColourSeam(img, Seam);
    imshow(NewImage)
    img = RemoveSeam(img, Seam);
    disp(i)
end


imshow(imgorig)
figure
imshow(img)

