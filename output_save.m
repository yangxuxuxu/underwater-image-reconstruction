function output_save(DeconvMean,meanframe)
global regPATH;
global indexLoops;
global maxIterLoop;
save ([regPATH '\DeconvMeans.mat'],'DeconvMean');
save ([regPATH '\meanframe.mat'],'meanframe');
for indexLoops=1:maxIterLoop 
    filename = [regPATH sprintf('DeconvMean%d',indexLoops),'.jpg'];
    imwrite(uint8(round(DeconvMean(:,:,indexLoops)*255)),filename);
end
for indexLoops=1:maxIterLoop
    filename = [regPATH sprintf('meanframe%d',indexLoops),'.jpg'];
    imwrite(uint8(round(meanframe(:,:,indexLoops)*255)),filename);
end
end