% Gets an matrix that contains all of the various sizes of the Cats Vs.
% Dogs pictures

path_to_files = 'cvg/train/Dogs/';
files = dir(path_to_files);
files=files(~ismember({files.name},{'.','..'}));

for i = 1:length(files)
    img = imread(fullfile(path_to_files,files(i).name));
    imageSize(:,i) = size(img);  
end