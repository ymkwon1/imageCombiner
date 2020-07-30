function [frames] = GenerateFrameList(start,step,n)
%GenerateFrameList generates a list of frames we are interested in,
%In particular this function will be useful for extracting frames from a
%movie file
% INPUTS: start  = a starting frame number
%         step   = the step size between frames that are extracted
%         n      = the desired number of frames to generate
% OUTPUT: frames = a 1xn 1D array where n is the desired number of frames
%                  from our input. The first element of the array is the
%                  starting frame number (start) and each subsequent
%                  element will have a value of a step size(step) greater
%                  than the last.
% Author: Anon Ymous

% for loop creating a 1 x n 1D array, first element is the start frame and
% each subsequent frame is a step size greater than the last
for i = 1:n
    frames(i) = start + step*(i-1);
end
end

