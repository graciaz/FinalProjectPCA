clc
clear all
close all

%%%%% Download data %%%%%
%%% For original covariance matrix %%%
%load('stat_vector_angle');
%load('stat_vector_emoji');
%load('stat_vector_illumination');

%%% For nomalize covariance matrix %%%
%%%%% Choose path %%%%%
%path = "angle";
%path = "emoji";
path = "illumination";
[nom_cov_mean, nom_cov_median, nom_cov_mode, nom_cov_max, nom_cov_min, nom_cov_skewness, nom_cov_kurtosis] = nomalizeDataForPlot(path);

%%%%%%%%%%%%%% PLOT PART %%%%%%%%%%%%%%
set_vec_mean = [];
set_vec_median = [];
set_vec_mode = [];
set_vec_max = [];
set_vec_min = [];
set_vec_skewness = [];
set_vec_kurtosis = [];

%%%%% for center matrix %%%%%
for i = 1:size(nom_cov_mean, 1)
    set_vec_mean = [set_vec_mean, nom_cov_mean(i,i)];
    set_vec_median = [set_vec_median, nom_cov_median(i,i)];
    set_vec_mode = [set_vec_mode, nom_cov_mode(i,i)];
    set_vec_max = [set_vec_max, nom_cov_max(i,i)];
    set_vec_min = [set_vec_min, nom_cov_min(i,i)];
    set_vec_skewness = [set_vec_skewness, nom_cov_skewness(i,i)];
    set_vec_kurtosis = [set_vec_kurtosis, nom_cov_kurtosis(i,i)];
end

% %%%%% for side matrix %%%%%
% size_cov = size(nom_cov_mean, 1);
% for i = 1:size_cov
%     set_vec_mean = [set_vec_mean, nom_cov_mean(i,i+1:size_cov)];
%     set_vec_median = [set_vec_median, nom_cov_median(i,i+1:size_cov)];
%     set_vec_mode = [set_vec_mode, nom_cov_mode(i,i+1:size_cov)];
%     set_vec_max = [set_vec_max, nom_cov_max(i,i+1:size_cov)];
%     set_vec_min = [set_vec_min, nom_cov_min(i,i+1:size_cov)];
%     set_vec_skewness = [set_vec_skewness, nom_cov_skewness(i,i+1:size_cov)];
%     set_vec_kurtosis = [set_vec_kurtosis, nom_cov_kurtosis(i,i+1:size_cov)];
% end

%%%%% plot all statistics method%%%%%
figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_mean, 'Marker', 'o', 'DisplayName','mean')
hold on
plot(set_vec_median, 'Marker', 'x', 'DisplayName','median')
hold on
plot(set_vec_mode, 'Marker', '+', 'DisplayName','mode')
hold on
plot(set_vec_max, 'Marker', '*', 'DisplayName','max')
hold on
plot(set_vec_min,  'Marker', 'p', 'DisplayName','min')
% hold on
% plot(set_vec_skewness, 'Marker', 's', 'DisplayName','skewness')
% hold on
% plot(set_vec_kurtosis, 'Marker', 'd', 'DisplayName','kurtosis')

legend

%%%%%%%%%%%% For nomalize data %%%%%%%%%%%%
%axis([1 105 0 1]) % For center angle
%axis([1 4800 0 1]) % For side angle
%axis([1 225 0 1]) % For center emoji
%axis([1 22000 0 1]) % For side emoji
axis([1 195 0 1]) % For center illumination
%axis([1 16000 0 1]) % For side illumination

title('All statistics method')

%%%%% each plot %%%%%
figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_mean, 'DisplayName','mean')
legend
%%%%%%%%%%%% For nomalize data %%%%%%%%%%%%
%axis([1 105 0 1]) % For center angle
%axis([1 4800 0 1]) % For side angle
%axis([1 225 0 1]) % For center emoji
%axis([1 22000 0 1]) % For side emoji
axis([1 195 0 1]) % For center illumination
%axis([1 16000 0 1]) % For side illumination
title('mean')

figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_median, 'DisplayName','median')
legend
%%%%%%%%%%%% For nomalize data %%%%%%%%%%%%
%axis([1 105 0 1]) % For center angle
%axis([1 4800 0 1]) % For side angle
%axis([1 225 0 1]) % For center emoji
%axis([1 22000 0 1]) % For side emoji
axis([1 195 0 1]) % For center illumination
%axis([1 16000 0 1]) % For side illumination
title('median')

figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_mode, 'DisplayName','mode')
legend
%%%%%%%%%%%% For nomalize data %%%%%%%%%%%%
%axis([1 105 0 1]) % For center angle
%axis([1 4800 0 1]) % For side angle
%axis([1 225 0 1]) % For center emoji
%axis([1 22000 0 1]) % For side emoji
axis([1 195 0 1]) % For center illumination
%axis([1 16000 0 1]) % For side illumination
title('mode')

figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_max, 'DisplayName','max')
legend
%%%%%%%%%%%% For nomalize data %%%%%%%%%%%%
%axis([1 105 0 1]) % For center angle
%axis([1 4800 0 1]) % For side angle
%axis([1 225 0 1]) % For center emoji
%axis([1 22000 0 1]) % For side emoji
axis([1 195 0 1]) % For center illumination
%axis([1 16000 0 1]) % For side illumination
title('max')

figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_min, 'DisplayName','min')
legend
%%%%%%%%%%%% For nomalize data %%%%%%%%%%%%
%axis([1 105 0 1]) % For center angle
%axis([1 4800 0 1]) % For side angle
%axis([1 225 0 1]) % For center emoji
%axis([1 22000 0 1]) % For side emoji
axis([1 195 0 1]) % For center illumination
%axis([1 16000 0 1]) % For side illumination
title('min')

figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_skewness, 'DisplayName','skewness')
legend
%%%%%%%%%%%% For nomalize data %%%%%%%%%%%%
%axis([1 105 0 1]) % For center angle
%axis([1 4800 0 1]) % For side angle
%axis([1 225 0 1]) % For center emoji
%axis([1 22000 0 1]) % For side emoji
axis([1 195 0 1]) % For center illumination
%axis([1 16000 0 1]) % For side illumination
title('skewness')

figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_kurtosis, 'DisplayName','kurtosis')
legend
%%%%%%%%%%%% For nomalize data %%%%%%%%%%%%
%axis([1 105 0 1]) % For center angle
%axis([1 4800 0 1]) % For side angle
%axis([1 225 0 1]) % For center emoji
%axis([1 22000 0 1]) % For side emoji
axis([1 195 0 1]) % For center illumination
%axis([1 16000 0 1]) % For side illumination
title('kurtosis')