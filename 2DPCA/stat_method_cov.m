clear all
%close all

%%%%% Change PX which you want to calculate %%%%%
px = 0;
[cov_mean, cov_median, cov_mode, cov_max, cov_min, cov_skewness, cov_kurtosis] = statMethodValue(px);

% %%%%% Transform cov_statistics_method to vector %%%%%
% %%%%% vector size is 1 x XXX %%%%%
% 
% vec_mean =zeros(1, size(cov_mean, 1) * 2);
% vec_median =zeros(1, size(cov_median, 1) * 2);
% vec_mode =zeros(1, size(cov_mode, 1) * 2);
% vec_max =zeros(1, size(cov_max, 1) * 2);
% vec_min =zeros(1, size(cov_min, 1) * 2);
% vec_skewness =zeros(1, size(cov_skewness, 1) * 2);
% vec_kurtosis =zeros(1, size(cov_kurtosis, 1) * 2);
% 
% for i = 1: size(cov_mean, 1)
%     vec_mean = [vec_mean, cov_mean(i,:)];
%     vec_median = [vec_median, cov_median(i,:)];
%     vec_mode = [vec_mode, cov_mode(i,:)];
%     vec_max = [vec_max, cov_max(i,:)];
%     vec_min = [vec_min, cov_min(i,:)];
%     vec_skewness = [vec_skewness, cov_skewness(i,:)];
%     vec_kurtosis = [vec_kurtosis, cov_kurtosis(i,:)];
% end




