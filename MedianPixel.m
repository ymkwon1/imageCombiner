function [r,g,b] = MedianPixel(array)
% MedianPixel calculates rounded the median RGB values from a list of 
% pixels
% INPUT: array = a 1xnx3 3D array of RGB values representing a list of
%                n number of pixels(pixel 1 is put in column 1, pixel 2 
%                in column 2 etc)
% OUTPUTS:   Displayed in the following order
%            r = the rounded median red value from the input array
%            g = the rounded median green value from the input array
%            b = the rounded median blue value from the input array
% Author: Anon Ymous


r = round(median(array(:,:,1))); % median r value
g = round(median(array(:,:,2))); % median g value
b = round(median(array(:,:,3))); % median b value
end

