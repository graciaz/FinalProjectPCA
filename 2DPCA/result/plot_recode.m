clc
clear all
close all

%%%%% Choose path %%%%%
%path = "angle";
%path = "emoji";
path = "illumination";

%%%%% Choose data type %%%%%
%data_type = "ori";
%data_type = "nom";
data_type = "all"

%%%%% Choose data_line %%%%%
%data_line = "center";
%data_line = "side";
data_line = "all";
%%%%% Choose filter or not %%%%%
%filter = "yes";
%filter = "no";
filter = "all";

%%%%% Calling Data for plot %%%%%
%%%%% For center or side %%%%%
[set_vec_mean,set_vec_median,set_vec_mode,set_vec_max,set_vec_min,set_vec_skewness, set_vec_kurtosis, plt_axis] = plotData(path, data_type, data_line, filter);

%%%%% For all covariance %%%%%%
%[cov_mean, cov_median, cov_mode, cov_max, cov_min, cov_skewness, cov_kurtosis] = OriDataForPlot(path);

%%%%% For ceil data %%%%%
%[set_vec_mean,set_vec_median,set_vec_mode,set_vec_max,set_vec_min,set_vec_skewness, set_vec_kurtosis] = CeilDataForPlot(path, data_type, data_line);

%%%%% plot all statistics method%%%%%
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% plot(set_vec_mean, 'DisplayName','mean')
% hold on
% plot(set_vec_median, 'DisplayName','median')
% hold on
% plot(set_vec_mode, 'DisplayName','mode')
% hold on
% plot(set_vec_max, 'DisplayName','max')
% hold on
% plot(set_vec_min, 'DisplayName','min')
% hold on
% plot(set_vec_skewness, 'DisplayName','skewness')
% hold on
% plot(set_vec_kurtosis, 'DisplayName','kurtosis')
% legend
% axis(plt_axis)
% title('All statistics method')
% 
% %%%%% each plot %%%%%
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% plot(set_vec_mean, 'DisplayName','mean')
% legend
% axis(plt_axis)
% title('mean')
% 
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% plot(set_vec_median, 'DisplayName','median')
% legend
% axis(plt_axis)
% title('median')
% 
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% plot(set_vec_mode, 'DisplayName','mode')
% legend
% axis(plt_axis)
% title('mode')
% 
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% plot(set_vec_max, 'DisplayName','max')
% legend
% axis(plt_axis)
% title('max')
% 
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% plot(set_vec_min, 'DisplayName','min')
% legend
% axis(plt_axis)
% title('min')
% 
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% plot(set_vec_skewness, 'DisplayName','skewness')
% legend
% axis(plt_axis)
% title('skewness')
% 
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% plot(set_vec_kurtosis, 'DisplayName','kurtosis')
% legend
% axis(plt_axis)
% title('kurtosis')

%%%%% Distribution %%%%%
%%%%% plot all statistics method%%%%%
% edges = unique(set_vec_mean);
% counts = histc(set_vec_mean, edges);
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% plot(edges, counts, 'DisplayName','mean')
% hold on
% edges = unique(set_vec_median);
% counts = histc(set_vec_median, edges);
% plot(edges, counts, 'DisplayName','median')
% hold on
% edges = unique(set_vec_mode);
% counts = histc(set_vec_mode, edges);
% plot(edges, counts, 'DisplayName','mode')
% hold on
% edges = unique(set_vec_max);
% counts = histc(set_vec_max, edges);
% plot(edges, counts, 'DisplayName','max')
% hold on
% edges = unique(set_vec_min);
% counts = histc(set_vec_min, edges);
% plot(edges, counts, 'DisplayName','min')
% hold on
% edges = unique(set_vec_skewness);
% counts = histc(set_vec_skewness, edges);
% plot(edges, counts, 'DisplayName','skewness')
% hold on
% edges = unique(set_vec_kurtosis);
% counts = histc(set_vec_kurtosis, edges);
% plot(edges, counts, 'DisplayName','kurtosis')
% legend
% title('All statistics method')
% 
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% edges = unique(set_vec_mean)
% counts = histc(set_vec_mean, edges)
% plot(edges, counts, 'DisplayName', 'mean')
% axis([min(set_vec_mean), max(set_vec_mean), min(counts)-0.1, max(counts)+0.1])
% legend
% title('mean')
% 
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% edges = unique(set_vec_median)
% counts = histc(set_vec_median, edges)
% plot(edges, counts, 'DisplayName', 'median')
% axis([min(set_vec_median), max(set_vec_median), min(counts)-0.1, max(counts)+0.1])
% legend
% title('median')
% 
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% edges = unique(set_vec_mode)
% counts = histc(set_vec_mode, edges)
% plot(edges, counts, 'DisplayName', 'mode')
% axis([min(set_vec_mode), max(set_vec_mode), min(counts)-0.1, max(counts)+0.1])
% legend
% title('mode')
% 
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% edges = unique(set_vec_max)
% counts = histc(set_vec_max, edges)
% plot(edges, counts, 'DisplayName', 'max')
% axis([min(set_vec_max), max(set_vec_max), min(counts)-0.1, max(counts)+0.1])
% legend
% title('max')
% 
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% edges = unique(set_vec_min)
% counts = histc(set_vec_min, edges)
% plot(edges, counts, 'DisplayName', 'min')
% axis([min(set_vec_min), max(set_vec_min), min(counts)-0.1, max(counts)+0.1])
% legend
% title('min')
% 
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% edges = unique(set_vec_skewness)
% counts = histc(set_vec_skewness, edges)
% plot(edges, counts, 'DisplayName', 'skewness')
% axis([min(set_vec_skewness), max(set_vec_skewness), min(counts)-0.1, max(counts)+0.1])
% legend
% title('skewness')
% 
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% edges = unique(set_vec_kurtosis)
% counts = histc(set_vec_kurtosis, edges)
% plot(edges, counts, 'DisplayName', 'kurtosis')
% axis([min(set_vec_kurtosis), max(set_vec_kurtosis), min(counts)-0.1, max(counts)+0.1])
% legend
% title('kurtosis')

%%%%% Min and Max plot %%%%%
path = "angle";
[set_vec_mean,set_vec_median,set_vec_mode,set_vec_max,set_vec_min,set_vec_skewness, set_vec_kurtosis, plt_axis] = plotData(path, data_type, data_line, filter);
angle_x = [min(set_vec_mean(:)), min(set_vec_median(:)), min(set_vec_max(:)), min(set_vec_min(:)), min(set_vec_skewness(:)), min(set_vec_kurtosis(:))];
angle_y = [max(set_vec_mean(:)), max(set_vec_median(:)), max(set_vec_max(:)), max(set_vec_min(:)), max(set_vec_skewness(:)), max(set_vec_kurtosis(:))];


path = "emoji";
[set_vec_mean,set_vec_median,set_vec_mode,set_vec_max,set_vec_min,set_vec_skewness, set_vec_kurtosis, plt_axis] = plotData(path, data_type, data_line, filter);
emoji_x = [min(set_vec_mean(:)), min(set_vec_median(:)), min(set_vec_max(:)), min(set_vec_min(:)), min(set_vec_skewness(:)), min(set_vec_kurtosis(:))];
emoji_y = [max(set_vec_mean(:)), max(set_vec_median(:)), max(set_vec_max(:)), max(set_vec_min(:)), max(set_vec_skewness(:)), max(set_vec_kurtosis(:))];


path = "illumination";
[set_vec_mean,set_vec_median,set_vec_mode,set_vec_max,set_vec_min,set_vec_skewness, set_vec_kurtosis, plt_axis] = plotData(path, data_type, data_line, filter);
illu_x = [min(set_vec_mean(:)), min(set_vec_median(:)), min(set_vec_max(:)), min(set_vec_min(:)), min(set_vec_skewness(:)), min(set_vec_kurtosis(:))];
illu_y = [max(set_vec_mean(:)), max(set_vec_median(:)), max(set_vec_max(:)), max(set_vec_min(:)), max(set_vec_skewness(:)), max(set_vec_kurtosis(:))];

%%%%% plot all statistics method%%%%%
% figure()
% set(gcf, 'Position', get(0, 'Screensize'));
% scatter(min(set_vec_mean(:)), max(set_vec_mean(:)), 'DisplayName','mean')
% hold on
% scatter(min(set_vec_median(:)), max(set_vec_median(:)), 'DisplayName','median')
% hold on
% scatter(min(set_vec_mode(:)), max(set_vec_mode(:)), 'DisplayName','mode')
% hold on
% scatter(min(set_vec_max(:)), max(set_vec_max(:)), 'DisplayName','max')
% hold on
% scatter(min(set_vec_min(:)), max(set_vec_min(:)), 'DisplayName','min')
% hold on
% scatter(min(set_vec_skewness(:)), max(set_vec_skewness(:)), 'DisplayName','skewness')
% hold on
% scatter(min(set_vec_kurtosis(:)), max(set_vec_kurtosis(:)), 'DisplayName','kurtosis')
% 
% legend
% axis([-1.8 4.5 0 23.5])
% title({path; 'max and min'})

set(gcf, 'Position', get(0, 'Screensize'));
scatter(angle_x, angle_y, 'DisplayName','angle')
hold on
scatter(emoji_x, emoji_y, 'DisplayName','emoji')
hold on
scatter(illu_x, illu_y, 'DisplayName','illumination')
legend
title(['3 dataset'; 'max and min'])
