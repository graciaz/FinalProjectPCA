clc
clear all
close all

%%%%% Download data %%%%%
%%%%% Choose path %%%%%
path = "angle";
%path = "emoji";
%path = "illumination";


%%% For original covariance matrix %%%
[cov_mean, cov_median, cov_mode, cov_max, cov_min, cov_skewness, cov_kurtosis] = OriDataForPlot(path);

%%% For nomalize covariance matrix %%%
[nom_cov_mean, nom_cov_median, nom_cov_mode, nom_cov_max, nom_cov_min, nom_cov_skewness, nom_cov_kurtosis] = nomalizeDataForPlot(path);

%%%%%%%%%%%%%%%%%% PLOT PART %%%%%%%%%%%%%%%%%%%%
%%%%% For original covariance matrix %%%%%

%%%%% limit for angle %%%%%
% imgsc_lim = [-1.9 12.1]; % all statistics method
%imgsc_lim = [-1.9 2.2]; % without kurtosis
%%%%% limit for emoji %%%%%
%imgsc_lim = [-6.4 119.2]; % all statistics method
%imgsc_lim = [-6.4 10.4]; % without kurtosis
%%%%% limit for illumination %%%%%
%%imgsc_lim = [-1.8 23.5]; % all statistics method
%imgsc_lim = [-1.8 3.5]; % without kurtosis

figure()
imagesc(cov_mean)%, imgsc_lim)
colorbar
title('mean')
figure()
imagesc(cov_median)%, imgsc_lim)
colorbar
title('median')
figure()
imagesc(cov_mode)%, imgsc_lim)
colorbar
title('mode')
figure()
imagesc(cov_max)%, imgsc_lim)
colorbar
title('max')
figure()
imagesc(cov_min)%, imgsc_lim)
colorbar
title('min')
figure()
imagesc(cov_skewness)%, imgsc_lim)
colorbar
title('skewness')
figure()
imagesc(cov_kurtosis)%, imgsc_lim)
colorbar
title('kurtosis')

%%%%% For nomalize covariance matrix %%%%%
figure()
imagesc(nom_cov_mean)
colorbar
% [sd_val, mean_val, entropy_val] = valueForImgsc(nom_cov_mean);
% title({'\fontsize{16}mean'; ['\fontsize{11}sd: ', num2str(sd_val), '\color{red} mean: ', num2str(mean_val), '\color{blue} entropy: ', num2str(entropy_val)]})
title('mean')

figure()
imagesc(nom_cov_median)
colorbar
% [sd_val, mean_val, entropy_val] = valueForImgsc(nom_cov_median);
% title({'\fontsize{16}median'; ['\fontsize{11}sd: ', num2str(sd_val), '\color{red} mean: ', num2str(mean_val), '\color{blue} entropy: ', num2str(entropy_val)]})
title('median')

figure()
imagesc(nom_cov_mode)
colorbar
% [sd_val, mean_val, entropy_val] = valueForImgsc(nom_cov_mode);
% title({'\fontsize{16}mode'; ['\fontsize{11}sd: ', num2str(sd_val), '\color{red} mean: ', num2str(mean_val), '\color{blue} entropy: ', num2str(entropy_val)]})
title('mode')

figure()
imagesc(nom_cov_max)
colorbar
% [sd_val, mean_val, entropy_val] = valueForImgsc(nom_cov_max);
% title({'\fontsize{16}max'; ['\fontsize{11}sd: ', num2str(sd_val), '\color{red} mean: ', num2str(mean_val), '\color{blue} entropy: ', num2str(entropy_val)]})
title('max')

figure()
imagesc(nom_cov_min)
colorbar
% [sd_val, mean_val, entropy_val] = valueForImgsc(nom_cov_min);
% title({'\fontsize{16}min'; ['\fontsize{11}sd: ', num2str(sd_val), '\color{red} mean: ', num2str(mean_val), '\color{blue} entropy: ', num2str(entropy_val)]})
title('min')

figure()
imagesc(nom_cov_skewness)
colorbar
% [sd_val, mean_val, entropy_val] = valueForImgsc(nom_cov_skewness);
% title({'\fontsize{16}skewness'; ['\fontsize{11}sd: ', num2str(sd_val), '\color{red} mean: ', num2str(mean_val), '\color{blue} entropy: ', num2str(entropy_val)]})
title('skewness')

figure()
imagesc(nom_cov_kurtosis)
colorbar
% [sd_val, mean_val, entropy_val] = valueForImgsc(nom_cov_kurtosis);
% title({'\fontsize{16}kurtosis'; ['\fontsize{11}sd: ', num2str(sd_val), '\color{red} mean: ', num2str(mean_val), '\color{blue} entropy: ', num2str(entropy_val)]})
title('kurtosis')