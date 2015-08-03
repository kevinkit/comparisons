%%This script has the following purposes:

%% 2. Read out the results from the scripts
%% 3. Compare the output

x = pwd;
addpath(genpath(x), '-end');

cd /home/khoefle/Downloads/ufo-upiv-master/                  %%Location of the first version

cd data
cd input

a = imread('input-stack.tif');
b = imread('sampleA-0158.tif');
c = imread('sampleB-0001-contrast.tif');
d = imread('sampleB-0001.tif');
e = imread('sampleC-0050-contrast.tif');
f = imread('sampleC-0050.tif');


cd ..
cd output/sampleB-00000

out_1024 = get_output(1024);
out_512 = get_output(512);

cd /home/khoefle/ufo-upiv/                             %%location of the second version

cd data
cd input

a_ = imread('input-stack.tif');
b_ = imread('sampleA-0158.tif');
c_ = imread('sampleB-0001-contrast.tif');
d_ = imread('sampleB-0001.tif');
e_ = imread('sampleC-0050-contrast.tif');
f_ = imread('sampleC-0050.tif');


if(testit(a_,a) == -1)
    display('INPUT IS DIFFERENT!');
end

if(testit(b_,b) == -1)
     display('INPUT IS DIFFERENT!');
end

if(testit(c_,c) == -1)
     display('INPUT IS DIFFERENT!');
end

if(testit(d_,d) == -1)
     display('INPUT IS DIFFERENT!');
end

if(testit(e_,e) == -1)
     display('INPUT IS DIFFERENT!');
end

if(testit(f_,f) == -1)
     display('INPUT IS DIFFERENT!');
end

cd ..
cd output/sampleB-00000

out_1024_ = get_output(1024);
out_512_ = get_output(512);

if(out_1024_ == out_1024)
   display('FINE'); 
else
    diplay('ERROR');
end


if(out_512 == out_512_)
   display('FINE'); 
else
    display('ERROR');
end






