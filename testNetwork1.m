testedNetwork=net;
imgNumber=1;
I = readimage(imdsTest,imgNumber);
C = semanticseg(I, testedNetwork);
B = labeloverlay(I,C,'Colormap',colorMap,'Transparency',0.4);
imshow(B)
pixelLabelColorbar(colorMap, classes);
