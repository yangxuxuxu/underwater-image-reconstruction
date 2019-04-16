function Istatic=blind_deconv(frame_combine)
% INPUT:
%         frame_combine！！a*b matrix��it's a fusion figure.
% OUTPUT:
%         DeconvMean！！The results of  blind deconvolution  in all iterations,and it's a*b*m matrix.a is picture hight,b is picture width,and m is the maximum iteration.
%         Istatic！！The result of blind_deconvolution in current iteration,and it's a*b matrix.a is picture hight,b is picture width.
A=zeros([272,282,1]);

	UNDERPSF = ones(3); 
    [J1, P1] = deconvblind(frame_combine,UNDERPSF,40);
    if all(all(P1)) == 0 
        Istatic = frame_combine; 
        disp('bind deconvolution failed');
    else
        Istatic = J1; 
        disp('bind deconvolution succeed');
    end
    %DeconvMean(:,:,indexLoops)=Istatic;
    
%     DeconvMean(:,:,indexLoops)= Istatic;
end