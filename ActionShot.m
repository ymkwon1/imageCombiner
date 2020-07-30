function [newimage] = ActionShot(img)
% ActionShot creates an action shot image by finding the pixels from a
% stack of images that are most distant from the median RGB values.
% Each Pixel in the new image is obtained by finding the pixel in the same
% row and column of the source images that is the most distant from the
% mediand RGB values of the stack of corresponding points)
% INPUT:       img = a 1xn 1D cell array containing n images, where each
%                    element is an RGB image
% OUTPUT: newimage = an action shot in the form of an RGB image stored  as
%                    3D arrays of uint8 values
% Author: Anon Ymous

%finding number of row and columns in the image assuming all images are the
%same size
[row, col, colour] = size(img{1});

% preallocate array
newimage = zeros(row,col,3,'uint8');

for i = 1:row %row
    for j = 1:col %column
        for k = 1:3 %colour
            for m = 1:length(img) %number of images
                % creates a 1xnx3 3D array of RGB values where n is the
                % number of images
                findpixel(1,m,k) = img{1,m}(i,j,k);
            end
        end
        %finding the most distant pixel from the 1xnx3 array
        [r,g,b] = MostDistantPixel(findpixel);
        
        %Replacing  each pixel in the new image with the most distant
        %array
        newimage(i,j,1) = r;
        newimage(i,j,2) = g;
        newimage(i,j,3) = b;
        
    end
end
end

