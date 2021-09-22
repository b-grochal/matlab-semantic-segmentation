disp("Loading images");
imagesDirectory = fullfile(pwd, "data", "images");
imagesDatastore = imageDatastore(imagesDirectory); 

% HELPER
I = readimage(imagesDatastore, 1); % odczytuje i-ty obraz z datasotora
% I = histeq(I);
% imshow(I)

disp("Loading labels");

classes = [
"Slup"
"Izolator"
"Tlo"
];

labelsIds = pixelLabelIds();

labelsDirectory = fullfile(pwd,"data","labels");
pixelsDatastore = pixelLabelDatastore(labelsDirectory,classes,labelsIds);

C = readimage(pixelsDatastore, 1);
colorMap = dataColorMap;
B = labeloverlay(I,C,'ColorMap',colorMap);
imshow(B)
pixelLabelColorbar(colorMap,classes);


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

function pixelLabelColorbar(cmap, classNames)
% Add a colorbar to the current axis. The colorbar is formatted
% to display the class names with the color.

colormap(gca,cmap)

% Add colorbar to current figure.
c = colorbar('peer', gca);

% Use class names for tick marks.
c.TickLabels = classNames;
numClasses = size(cmap,1);

% Center tick labels.
c.Ticks = 1/(numClasses*2):1/numClasses:1;

% Remove tick mark.
c.TickLength = 0;
end

function colorMap = dataColorMap()
% Define the colormap used by CamVid dataset.

colorMap = [
    65 166 254   % Słup
    133 133 133       % Izolator
    0 204 0   % Tło
    ];

% Normalize between [0 1].
colorMap = colorMap ./ 255;
end