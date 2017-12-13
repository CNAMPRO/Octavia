% image data
bigIm = imread('LENA1.jpg');
smallysize = 50;
smallxsize = 70;

smallIm = imread('banana.jpg');
smallIm = smallIm(188:188+smallysize-1, 177:177+smallxsize-1, :);

% trajectory data
trajy = 500:-5:100;
trajx = trajy;
% animated diqsplay
for step = 1:length(trajx)
    
    displayIm = bigIm;
    displayIm(trajy(step):trajy(step)+smallysize-1, ...
        trajx(step):trajx(step)+smallxsize-1, :) = smallIm;
    imshow(displayIm);
    pause(0.2);
end