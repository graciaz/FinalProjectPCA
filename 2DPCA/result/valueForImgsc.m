function [sd_val, mean_val, entropy_val] = valueForImgsc(stat)

sd_val = std(stat(:));
mean_val = mean(stat(:));
entropy_val = entropy(stat(:));

end