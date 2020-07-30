function [filenames] = GenerateImageList(direc,ext)
% GenerateImageList generates a list of image names in a particular
% file extension contained in a specific directory
% INPUTS:   direc     = a string containing the name of the directory the
%                       images are contained in
%           ext       = a string containing the file extension of the
%                       images to generate
% OUTPUT:   filenames = A 1xn 1D cell array containing n strings where
%                       each element is the filename of an image from the
%                       specified directory that has a particular file
%                       extension
% Author: Anon Ymous

%Generates a struct array from the directory(direc) with the particular
%extension(ext)
files = dir(fullfile(direc, ['*.',ext]));

%accessing the names for the files from the struct array
% and putting them into a cell array as strings
filenames = {files.name};
end

