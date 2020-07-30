function [img] = ReadImages(direc,filenames)
% ReadImages reads in a specified list of images given the filenames and
% directory where the files are located
% INPUTS:      direc = a string containing the name of the directory the
%                      images are contained in
%          filenames = a 1xn 1D cell array containing n strings where
%                      each element is a filename of an image to read
% OUTPUT:        img = a 1xn 1D cell array containing n images, each
%                      element is an RGB image. The first image will
%                      corresepond to the first filename from filenames
% Author: Anon Ymous

% putting each file with filenames in a specific directory 
% into a cell array of RGB images
for i = 1:length(filenames)
    img{i} = imread([fullfile(direc, filenames{i})]);
end
end

