imageFrequency = table.PixelCount ./ table.ImagePixelCount;
classWeights = median(imageFrequency) ./ imageFrequency;
pixelLayer = pixelClassificationLayer('Name','labels','Classes',table.Name,'ClassWeights',classWeights);
deeplab = replaceLayer(deeplab,"classification",pixelLayer);