% Resizes the pictures in a folder and saves them in a new folder

% accordionPics = dir('pImages/accordion/*.jpg');
% dollarBillPics = dir('pImages/dollar_bill/*.jpg');
% 
% img = imread(strcat('pImages/accordion/' accordionPics.name.1
path_to_files = 'pImages/accordion/';
files = dir(path_to_files);
files=files(~ismember({files.name},{'.','..'}));
target_size = [200 200];
save_path = 'reGImages/accordion';
fmt = "JPG"

for i = 1:length(files)
    img = imread(fullfile(path_to_files,files(i).name));
    img = imresize(img, target_size);
    if size(img, 3) == 3
        img = rgb2gray(img);
    else
        size(img)
    end
    imwrite(img,fullfile(save_path,files(i).name));     
end