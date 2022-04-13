function mat2png()
%% matlab code to generate png from .mat file

input_file = "./dataset/deep-sr-itm/train/SDR_youtube_80.mat";
save_folder = "./dataset/deep-sr-itm/png/trainset_SDR_x2";

if exist('save_folder', 'var')
    if exist(save_folder, 'dir')
        disp(['It will cover ', save_folder]);
    else
        mkdir(save_folder);
    end
end

mat = load(input_file).SDR_data;

[x,y,z,num] = size(mat);
for i = 1:1:num
    im = mat(:,:,:,i);
    imwrite(im, fullfile(save_folder, [num2str(i,'%06d'), '.png']));
    [num2str(i,'%06d'), '.png']
end

end
