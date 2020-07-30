function [sq] = PixelDistance(ar1,ar2)
%PixelDistance calculates the square of the distance between two points in
%colour space
% INPUTS:  ar1 = an array containing three elements representing a point in
%                the 3D colour space
%          ar2 = an array containing three elements representing a second
%                point in 3D colour space
% OUTPUT:   sq = the square of the distance between the two points in 3D
%                colour space
% Author: Anon Ymous

% convert uint8 values to doubles before calculations
ar1 = double(ar1);
ar2 = double(ar2);

% calculating square distance between points ar1 and ar2
sq = (ar1(1) - ar2(1))^2 + (ar1(2) - ar2(2))^2 + (ar1(3) - ar2(3))^2;
end

