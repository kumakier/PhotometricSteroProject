% Photometric stereo
%
%Darren Script Test for my Thesis
%

clear;
close all;
clc;

%%%Testing Existing Data Set 
% addpath(genpath('../psmImages/buddha'));
% 
% IMAGE = 'psmImages/buddha/buddha';

%%---------------------------------

%%% My own dataset
addpath(genpath('../psmImages/Monster'));

IMAGE = 'psmImages/Monster/Monster';
%Read in mask
% mask = tga_read_image([IMAGE '.mask.tga']);
% mask = rgb2gray(mask);

mask = imread([IMAGE '.mask.png']);
mask = rgb2gray(mask);

% 
% maskfile  = strcat( IMAGE, '/', imagename, '/', imagename,'.mask.tiff')
% maskImage = imread( IMAGE );

%------------------------ Get light directions, L

fileID = fopen('Im_Lights.txt', 'r');
s = textscan(fileID, '%f %f %f', 'HeaderLines', 1, 'Delimiter', ' ');
fclose(fileID);
L = [s{1} s{2} s{3}];
%------------------------ Get images, I (same order as L)

f = cell(4, 1);
for idx = 1:size(f, 1)
    im = imread([IMAGE num2str(idx-1) '.png']);
    f{idx} = im;
end

%========================= SURFACE NORMALS =========================%

N = compute_surfNorm(f, L, mask);
imshow(N);
title('Monster Computed Surface Normal')
%Visualization

show_surfNorm(N, 4);
%imwrite(N, sprintf('./MyResults/%s_norm1.png', IMAGE));
title('Monster Normal1')
h = show_surfNorm(N, 4);
title('Monster Normal2')
%saveas(h, sprintf('./MyResults/%s_norm2.png', IMAGE));

% 
% %========================= HEIGHT MAP =========================%

Z = compute_heightMap(N, mask);
% Visualization
figure;
title('Monster Computed Height Map')
imshow(uint8(Z));
%imwrite(uint8(Z), sprintf('./results/%s_height.png', IMAGE));
