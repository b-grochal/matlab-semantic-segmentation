[deeplab1Network, deeplab1Info] = trainNetwork(dsTrain,deeplab1,options);
networkPath = fullfile(pwd, 'networks', 'deeplab1Network');
infoPath = fullfile(pwd, 'networks', 'deeplab1Info');
save(networkPath, 'deeplab1Network');
save(infoPath, 'deeplab1Info');

[deeplab2Network, deeplab2Info] = trainNetwork(dsTrain,deeplab2,options);
networkPath = fullfile(pwd, 'networks', 'deeplab2Network');
infoPath = fullfile(pwd, 'networks', 'deeplab2Info');
save(networkPath, 'deeplab2Network');
save(infoPath, 'deeplab2Info');