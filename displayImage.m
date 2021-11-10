imgNumber = 1;
I = readimage(imagesDatastore, imgNumber);
I = histeq(I);
imshow(I)