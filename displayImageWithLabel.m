imgNumber = 1;
I = readimage(imagesDatastore, imgNumber);
I = histeq(I);
C = readimage(pixelsDatastore, 1);
colorMap = dataColorMap;
B = labeloverlay(I,C,'ColorMap',colorMap);
imshow(B)
pixelLabelColorbar(colorMap,classes);