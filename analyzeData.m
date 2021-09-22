table = countEachLabel(pixelsDatastore);
frequency = table.PixelCount/sum(table.PixelCount);

bar(1:numel(classes),frequency)
xticks(1:numel(classes)) 
xticklabels(table.Name)
xtickangle(45)
ylabel('Frequency')