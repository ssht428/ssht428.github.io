clear all 
close all
rgb = imread('coloredChips.png');
 imshow(rgb);
 [x,y] = ginput(2)
 dist = sum(sqrt(diff(x).^2+diff(y).^2))
 minRadius = int8(dist/2 - 3)
 maxRadius = int8(dist/2 + 3)
 gray_image = rgb2gray(rgb);
 imshow(gray_image);
 [centers,radii] = imfindcircles(gray_image,[minRadius maxRadius],'ObjectPolarity','dark','Sensitivity',0.94,'Method','twostage');    % radiu must be integer type
 h=viscircles(centers,radii);
 [centersBright,radiiBright,metricBright] = imfindcircles(gray_image,[minRadius maxRadius],'ObjectPolarity','bright','Sensitivity',0.95,'EdgeThreshold',0.1);
 hBright = viscircles(centersBright, radiiBright);