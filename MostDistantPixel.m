function [r,g,b] = MostDistantPixel(array)
% MostDistantPixel calculates the pixel from a list that is most distant
% from the median RGB values of that list. The distance metric used is that
% described in the PixelDistance function.
% INPUT: array = a 1xnx3 3D array of RGB values representing a list of
%                   pixels (pixel 1 will be in column 1, pixel 2 in
%                  column 2 etc).   Typically n will be greater than 1
% OUTPUTS:   Displayed in the following order
%            r = the red value of the most distant pixel from the median
%            from our input array
%            g = the green value of the most distant pixel from the median
%            from our input array
%            b = the blue value of the most distant pixel from the median
%            from our input array
% Author: Anon Ymous


% calling the MedianPixel function to find the median RGB values of
% the input array
[r1,g1,b1] = MedianPixel(array);
%putting the values into an array
a = [r1,g1,b1];

% finding the number of columns from our input array
[rows,cols,colours] = size(array);

% creating a 1D array containing all the pixel distances between
% MedianPixel and the input array
for i = 1:cols
    d(i) = PixelDistance(a,array(1,i,:));
end

% locating the column where there is the maximum distance from the median
% value
j = 1;
while d(j) ~= max(d)
    j = j + 1;
end
% Outputting the column with the maximum distance from the median
r = array(1,j,1);
g = array(1,j,2);
b = array(1,j,3);
end

