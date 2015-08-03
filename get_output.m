function [ MAT ] = get_output(size_of_pic)
%GET_OUTPUT Summary of this function goes here
%   Detailed explanation goes here


    if(size_of_pic == 1024)
        MAT(:,:,1) = imread('output-00000-crop-pre.png');
        MAT(:,:,2) = imread('output-00000-crop.png');
    
        
    else
        MAT(:,:,1) = imread('output-00000-crop-pre-blobfilter0_2.png');
        MAT(:,:,2) = imread('output-00000-crop-pre-blobfilter0_6.png');
        MAT(:,:,3) = imread('output-00000-crop-pre-blobfilter0_8.png');
        
        MAT(:,:,4) = imread('output-00000-crop-pre-blobfilter1_0.png');
        MAT(:,:,5) = imread('output-00000-crop-pre-blobfilter1_2.png');
        MAT(:,:,6) = imread('output-00000-crop-pre-blobfilter1_5.png');
        
        MAT(:,:,7) = imread('output-00000-crop-pre-no-blobfilter.png');
        
    end
    
    
    


end

