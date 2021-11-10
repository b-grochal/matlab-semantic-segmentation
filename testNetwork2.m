testedNetwork=net;
imgNumber=1;
I = readimage(imdsTest,imgNumber);
C = semanticseg(I, testedNetwork);
expectedResult = readimage(pxdsTest,imgNumber);
actual = uint8(C);
expected = uint8(expectedResult);
imshowpair(actual, expected)