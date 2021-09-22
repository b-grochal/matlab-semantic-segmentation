[net, info] = trainNetwork(dsTrain,deeplab,options);
networkPath = fullfile(pwd, 'networks', 'network');
infoPath = fullfile(pwd, 'networks', 'info');
save(networkPath, 'net');
save(infoPath, 'info');