% Specify the network image size. This is typically the same as the traing image sizes.
imageSize = [2178 4096 3];

% Specify the number of classes.
numberOfClasses = numel(classes);

% Create DeepLab v3+.
deeplab = deeplabv3plusLayers(imageSize, numberOfClasses, "resnet18");