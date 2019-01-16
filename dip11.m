% Read in original RGB image.
image = imread('Capture.JPG');
% Extract color channels.
redd = image(:,:,1); % Red channel
grenn = image(:,:,2); % Green channel
bluee = image(:,:,3); % Blue channel
% Create an all black channel.
allBlack = zeros(size(image, 1), size(image, 2), 'uint8');
% Create color versions of the individual color channels.
just_red = cat(3, redd, allBlack, allBlack);
just_green = cat(3, allBlack, grenn, allBlack);
just_blue = cat(3, allBlack, allBlack, bluee);
% Recombine the individual color channels to create the original RGB image again.
recombinedimage = cat(3, redd, grenn, bluee);
% Display them all.
subplot(3, 3, 2);
imshow(image);
fontSize = 20;
subplot(3, 3, 4);
imshow(just_red);
subplot(3, 3, 5);
imshow(just_green)
subplot(3, 3, 6);
imshow(just_blue);
subplot(3, 3, 8);
imshow(recombinedimage);
