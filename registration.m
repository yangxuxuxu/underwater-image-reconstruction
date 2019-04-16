function frames=registration(frames,Istatic,indexLoops)
% INPUT:
%         frames！！a*b*n matrix,a is picture hight,b is picture width,and n is the number of pictures.
%         Istatic！！The result of blind_deconvolution in current iteration,and it's a*b matrix.a is picture hight,b is picture width.
% OUTPUT:
%         meanframe！！a*b*n matrix,a is picture hight,b is picture width,and n is the number of pictures.It's a new image sequence that has less distortion than before. 
global Options;
global regPATH;

for indexImages=1:size(frames,3) 
        Imoving=frames(:,:,indexImages);      
        [reg_blur,O_trans,Spacing,M,Bx,By,Fx,Fy] = register_images(Imoving,Istatic,Options);
        reg_noblur=bspline_transform(O_trans,Imoving,Spacing,3);
        frames(:,:,indexImages) = reg_noblur;
end 
    meanframe(:,:,indexLoops)=mean(frames,3);
    save ([regPATH sprintf('frames%d.mat',indexLoops)],'frames'); 
    for j=1:size(frames,3) 
        filename = [regPATH,sprintf('%d_%d',indexLoops,j),'.jpg'];
        imwrite(uint8(round(frames(:,:,j)*255)),filename);
    end
end