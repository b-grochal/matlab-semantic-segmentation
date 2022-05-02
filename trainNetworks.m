% [deeplab1Network, deeplab1Info] = trainNetwork(dsTrain,deeplab1,options);
% networkPath = fullfile(pwd, 'networks', 'deeplab1Network');
% infoPath = fullfile(pwd, 'networks', 'deeplab1Info');
% save(networkPath, 'deeplab1Network');
% save(infoPath, 'deeplab1Info');

% [deeplab2Network, deeplab2Info] = trainNetwork(dsTrain,deeplab2,options);
% networkPath = fullfile(pwd, 'networks', 'deeplab2Network');
% infoPath = fullfile(pwd, 'networks', 'deeplab2Info');
% save(networkPath, 'deeplab2Network');
% save(infoPath, 'deeplab2Info');
% 
% [deeplab3Network, deeplab3Info] = trainNetwork(dsTrain,deeplab3,options);
% networkPath = fullfile(pwd, 'networks', 'deeplab3Network');
% infoPath = fullfile(pwd, 'networks', 'deeplab3Info');
% save(networkPath, 'deeplab3Network');
% save(infoPath, 'deeplab3Info');
% 
% [deeplab4Network, deeplab4Info] = trainNetwork(dsTrain,deeplab4,options);
% networkPath = fullfile(pwd, 'networks', 'deeplab4Network');
% infoPath = fullfile(pwd, 'networks', 'deeplab4Info');
% save(networkPath, 'deeplab4Network');
% save(infoPath, 'deeplab4Info');
% 
% [deeplab5Network, deeplab5Info] = trainNetwork(dsTrain,deeplab5,options);
% networkPath = fullfile(pwd, 'networks', 'deeplab5Network');
% infoPath = fullfile(pwd, 'networks', 'deeplab5Info');
% save(networkPath, 'deeplab5Network');
% save(infoPath, 'deeplab5Info');
% 
% [deeplab6Network, deeplab6Info] = trainNetwork(dsTrain,deeplab6,options);
% networkPath = fullfile(pwd, 'networks', 'deeplab6Network');
% infoPath = fullfile(pwd, 'networks', 'deeplab6Info');
% save(networkPath, 'deeplab6Network');
% save(infoPath, 'deeplab6Info');
% 
% [deeplab7Network, deeplab7Info] = trainNetwork(dsTrain,deeplab7,options);
% networkPath = fullfile(pwd, 'networks', 'deeplab7Network');
% infoPath = fullfile(pwd, 'networks', 'deeplab7Info');
% save(networkPath, 'deeplab7Network');
% save(infoPath, 'deeplab7Info');
% 
% [deeplab8Network, deeplab8Info] = trainNetwork(dsTrain,deeplab8,options);
% networkPath = fullfile(pwd, 'networks', 'deeplab8Network');
% infoPath = fullfile(pwd, 'networks', 'deeplab8Info');
% save(networkPath, 'deeplab8Network');
% save(infoPath, 'deeplab8Info');

% [fcn1Network, fcn1Info] = trainNetwork(dsTrain,fcn1,options);
% networkPath = fullfile(pwd, 'networks', 'fcn1Network');
% infoPath = fullfile(pwd, 'networks', 'fcn1Info');
% save(networkPath, 'fcn1Network');
% save(infoPath, 'fcn1Info');

% [fcn2Network, fcn2Info] = trainNetwork(dsTrain,fcn2,options);
% networkPath = fullfile(pwd, 'networks', 'fcn2Network');
% infoPath = fullfile(pwd, 'networks', 'fcn2Info');
% save(networkPath, 'fcn2Network');
% save(infoPath, 'fcn2Info');
% 
% [fcn3Network, fcn3Info] = trainNetwork(dsTrain,fcn3,options);
% networkPath = fullfile(pwd, 'networks', 'fcn3Network');
% infoPath = fullfile(pwd, 'networks', 'fcn3Info');
% save(networkPath, 'fcn3Network');
% save(infoPath, 'fcn3Info');

% [unetNetwork, unetInfo] = trainNetwork(dsTrain,unet1,options);
% networkPath = fullfile(pwd, 'networks', 'unetNetwork');
% infoPath = fullfile(pwd, 'networks', 'unetInfo');
% save(networkPath, 'unet1Network');
% save(infoPath, 'unet1Info');

[segnet1Network, segnet1Info] = trainNetwork(dsTrain,segnet1,options);
networkPath = fullfile(pwd, 'networks', 'segnet1Network');
infoPath = fullfile(pwd, 'networks', 'segnet1Info');
save(networkPath, 'segnet1Network');
save(infoPath, 'segnet1Info');

% [segnet2Network, segnet2Info] = trainNetwork(dsTrain,segnet2,options);
% networkPath = fullfile(pwd, 'networks', 'segnet2Network');
% infoPath = fullfile(pwd, 'networks', 'segnet2Info');
% save(networkPath, 'segnet2Network');
% save(infoPath, 'segnet2Info');