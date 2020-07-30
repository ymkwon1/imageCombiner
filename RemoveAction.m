function [newimage] = RemoveAction(img)
% RemoveAction creates an image that has the action removed by applying a
% median filter(i.e. each pixel in the new image is the median RGB values
% from the stack of corresponding pixels taken from the source image).
% INPUT:       img = 1xn 1D cell array containing n images, each element
%                    is an RGB image
% OUTPUT: newimage = an RGB image, stored as a 3D array of uint8 values,
%                    obtained by taking the median RGB values of the stack
%                    of corresponding pixels from the source images.
% Author: Anon Ymous

% create a new 4D array where each element in the 4th dimension is a 3D
% RGB image from our input img
newmatrix = cat(4,img{1:end});

% create a new image using the median values from the 4th dimension(i.e.
% median values from all the input images)
newimage = median(newmatrix,4);
end