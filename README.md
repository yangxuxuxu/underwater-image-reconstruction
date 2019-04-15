# Underwater-Image-Reconstruction
---

This is a MATLAB code of paper [Reconstruction of distorted underwater images using robust registration](https://www.osapublishing.org/oe/abstract.cfm?uri=oe-27-7-9996&origin=search).

---

## Introduction

A new image restoration approach is proposed for the video sequence distorted by an undulating water surface. We use an iterative robust registration algorithm to remove most of distortions in the frames. Instead of registering each frame against the severely blurry mean, a patches fusion process is first employed to discard the patches with severer distortions and reconstruct the high quality image; and then the fused image is deblurred with the blind deconvolution process. After the registration process, the residuary unstructured noises are eliminated by the robust principal component analysis, which is called post-processing.
![Flow Chart](https://t1.picb.cc/uploads/2019/04/04/VFYbdd.png)

## Runing Detail
1. Unzip all documents.
2. Add all documents  into current directory of MATLAB.
3. Run the script named main,then wait a few minutes.
4. All Results are located in the directory named results.


## Comments
  
1.The data sets can be obtained from [here](http://www.cs.cmu.edu/~ILIM/projects/IM/water/research_water.html).

2.Our code does not contain the part of post-processing,which can be found from [here](http://perception.csl.illinois.edu/matrix-rank/sample_code.html).

## Author
zhen zhang and Xu Yang at School of Mechatronic Engineering and Automation, Shanghai University,Shanghai, China
##License
- For academic and non-commercial use only，and please cite our paper if it could help you.
- For commercial use,please contact ***zhangzhen_ta@shu.edu.cn***
