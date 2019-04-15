function frames=input_load()
% OUTPUT£º
%       frames¡ª¡ªa*b*n matrix,a is picture hight,b is picture width,and n is the number of pictures.
global regPATH;
%% set path
addpath('registration\');
addpath('data sets\');
regPATH='results\';% set saving path
if ~exist(regPATH,'dir')
    mkdir(regPATH);
end
%% load dataset and obtain mean figure  
load ('tiny.mat','frames');%load dataset
Meanframe=mean(frames,3);
imwrite(Meanframe,[regPATH '\meanframe0.jpg']);%save mean figure
end
