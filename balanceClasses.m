imageFrequency = table.PixelCount ./ table.ImagePixelCount;
classWeights = median(imageFrequency) ./ imageFrequency;
pixelLayer = pixelClassificationLayer('Name','labels','Classes',table.Name,'ClassWeights',classWeights);

deeplab1 = replaceLayer(deeplab1,"classification",pixelLayer);
deeplab2 = replaceLayer(deeplab2,"classification",pixelLayer);
deeplab3 = replaceLayer(deeplab3,"classification",pixelLayer);
deeplab4 = replaceLayer(deeplab4,"classification",pixelLayer);
deeplab5 = replaceLayer(deeplab5,"classification",pixelLayer);
deeplab6 = replaceLayer(deeplab6,"classification",pixelLayer);
deeplab7 = replaceLayer(deeplab7,"classification",pixelLayer);
deeplab8 = replaceLayer(deeplab8,"classification",pixelLayer);

fcn1 = replaceLayer(fcn1,"pixelLabels",pixelLayer);
fcn2 = replaceLayer(fcn2,"pixelLabels",pixelLayer);
fcn3 = replaceLayer(fcn3,"pixelLabels",pixelLayer);

unet = replaceLayer(unet,"Segmentation-Layer",pixelLayer);

segnet1 = replaceLayer(segnet1,"pixelLabels",pixelLayer);
segnet2 = replaceLayer(segnet2,"pixelLabels",pixelLayer);

