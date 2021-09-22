[imdsTrain, imdsVal, imdsTest, pxdsTrain, pxdsVal, pxdsTest] = partitionData(imagesDatastore,pixelsDatastore);
numTrainingImages = numel(imdsTrain.Files);
numValImages = numel(imdsVal.Files);
numTestingImages = numel(imdsTest.Files);

function [imdsTrain, imdsVal, imdsTest, pxdsTrain, pxdsVal, pxdsTest] = partitionData(imagesDatastore,pixelsDatastore)
% Partition data by randomly selecting 80% of the data for training, 5% of
% data for validation and 15% of data for testing.
    
% Set initial random state for example reproducibility.
rng(0); 
numFiles = numel(imagesDatastore.Files);
shuffledIndices = randperm(numFiles);

% Use 80% of the images for training.
numTrain = round(0.1 * numFiles);
trainingIdx = shuffledIndices(1:numTrain);

% Use 5% of the images for validation
numVal = round(0.1 * numFiles);
valIdx = shuffledIndices(numTrain+1:numTrain+numVal);

% Use the rest for testing.
testIdx = shuffledIndices(numTrain+numVal+1:end);

% Create image datastores for training and test.
trainingImages = imagesDatastore.Files(trainingIdx);
valImages = imagesDatastore.Files(valIdx);
testImages = imagesDatastore.Files(testIdx);

imdsTrain = imageDatastore(trainingImages);
imdsVal = imageDatastore(valImages);
imdsTest = imageDatastore(testImages);

% Extract class and label IDs info.
classes = pixelsDatastore.ClassNames;
labelIds = pixelLabelIds();

% Create pixel label datastores for training and test.
trainingLabels = pixelsDatastore.Files(trainingIdx);
valLabels = pixelsDatastore.Files(valIdx);
testLabels = pixelsDatastore.Files(testIdx);

pxdsTrain = pixelLabelDatastore(trainingLabels, classes, labelIds);
pxdsVal = pixelLabelDatastore(valLabels, classes, labelIds);
pxdsTest = pixelLabelDatastore(testLabels, classes, labelIds);
end

function labelsIds = pixelLabelIds()

labelsIds = {...
    % Słup
    [
    065, 166, 254; ...
    ] 
    
    % Izolator
    [
    133, 133, 133; ...
    ]
    
    % Tło, podłoże
    [
    000, 204, 000; ...
    ]
};
end