imageSize = [2176 4096 3];
imageSizeFcn = [2176 4096];

numberOfClasses = numel(classes);

deeplab1 = deeplabv3plusLayers(imageSize, numberOfClasses, "resnet18", 'DownsamplingFactor',8);
deeplab2 = deeplabv3plusLayers(imageSize, numberOfClasses, "resnet18", 'DownsamplingFactor',16);
deeplab3 = deeplabv3plusLayers(imageSize, numberOfClasses, "resnet50", 'DownsamplingFactor',8);
deeplab4 = deeplabv3plusLayers(imageSize, numberOfClasses, "resnet50", 'DownsamplingFactor',16);
deeplab5 = deeplabv3plusLayers(imageSize, numberOfClasses, "xception", 'DownsamplingFactor',8);
deeplab6 = deeplabv3plusLayers(imageSize, numberOfClasses, "xception", 'DownsamplingFactor',16);
deeplab7 = deeplabv3plusLayers(imageSize, numberOfClasses, "inceptionresnetv2",  'DownsamplingFactor',8);
deeplab8 = deeplabv3plusLayers(imageSize, numberOfClasses, "inceptionresnetv2", 'DownsamplingFactor',16);

fcn1=fcnLayers(imageSizeFcn, numberOfClasses, 'Type','8s');
fcn2=fcnLayers(imageSizeFcn, numberOfClasses, 'Type','16s');
fcn3=fcnLayers(imageSizeFcn, numberOfClasses, 'Type','32s');

unet=unetLayers(imageSize, numberOfClasses);

segnet1=segnetLayers(imageSize, numberOfClasses, 'vgg16');
segnet4=segnetLayers(imageSize, numberOfClasses, 'vgg19'); 