%%% Robust Registration
% Please cite the following paper if you use the code or the proposed technique:
% Zhen Zhang, and Xu Yang. Reconstruction of distorted underwater
% images using robust registration, 2019
% Questions? => zhangzhen_ta@shu.edu.cn

%% environment intialize
clc;
clear;
close all;

%% iteration variable set
global maxIterLoop;
maxIterLoop=10; 


%% iteration recovery
viariable_init();

frames=input_load();
 for indexLoops=1:maxIterLoop
   frame_combine=patch_fuse(frames,indexLoops);
   Istatic=blind_deconv(frame_combine);
   frames=registration(frames,Istatic,indexLoops);
   DeconvMean(:,:,indexLoops)=Istatic;
   meanframe(:,:,indexLoops)=mean(frames,3);
 end
 output_save(DeconvMean,meanframe);





	
    
    

