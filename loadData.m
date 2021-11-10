disp("Loading images");
imagesDirectory = fullfile(pwd, "data", "images");
imagesDatastore = imageDatastore(imagesDirectory); 

disp("Loading labels");
classes = [
"Slup"
"Izolator"
"Tlo"
];

labelsIds = pixelLabelIds();
labelsDirectory = fullfile(pwd,"data","labels");
pixelsDatastore = pixelLabelDatastore(labelsDirectory,classes,labelsIds);