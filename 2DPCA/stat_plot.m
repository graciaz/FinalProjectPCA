clc
clear all
close all

%%%%% Download data %%%%%
load('stat_vector_angle');
%load('stat_vector_emoji');
%load('stat_vector_illumination');

%%%%% limit for angle %%%%%
% imgsc_lim = [-1.9 12.1]; % all statistics method
%imgsc_lim = [-1.9 2.2]; % without kurtosis
%%%%% limit for emoji %%%%%
%imgsc_lim = [-6.4 119.2]; % all statistics method
%imgsc_lim = [-6.4 10.4]; % without kurtosis
%%%%% limit for illumination %%%%%
%%imgsc_lim = [-1.8 23.5]; % all statistics method
%imgsc_lim = [-1.8 3.5]; % without kurtosis
%%%%% Test imagesc %%%%%
% figure()
% imagesc(cov_mean4, imgsc_lim)
% colorbar
% title('mean')
% figure()
% imagesc(cov_median4, imgsc_lim)
% colorbar
% title('median')
% figure()
% imagesc(cov_mode4, imgsc_lim)
% colorbar
% title('mode')
% figure()
% imagesc(cov_max4, imgsc_lim)
% colorbar
% title('max')
% figure()
% imagesc(cov_min4, imgsc_lim)
% colorbar
% title('min')
% figure()
% imagesc(cov_skewness4, imgsc_lim)
% colorbar
% title('skewness')
% figure()
% imagesc(cov_kurtosis4, imgsc_lim)
% colorbar
% title('kurtosis')


%%%%% test plot stat %%%%%
% set(gcf, 'Position', get(0, 'Screensize'));

set_vec_mean = [];
set_vec_median = [];
set_vec_mode = [];
set_vec_max = [];
set_vec_min = [];
set_vec_skewness = [];
set_vec_kurtosis = [];

%%%%% for center matrix %%%%%
% for i = 1:size(cov_mean0, 1)
%     set_vec_mean = [set_vec_mean, cov_mean8(i,i)];
%     set_vec_median = [set_vec_median, cov_median8(i,i)];
%     set_vec_mode = [set_vec_mode, cov_mode8(i,i)];
%     set_vec_max = [set_vec_max, cov_max8(i,i)];
%     set_vec_min = [set_vec_min, cov_min8(i,i)];
%     set_vec_skewness = [set_vec_skewness, cov_skewness8(i,i)];
%     set_vec_kurtosis = [set_vec_kurtosis, cov_kurtosis8(i,i)];
% end

%%%%% for side matrix %%%%%
for i = 1:size(cov_mean0, 1)
    set_vec_mean = [set_vec_mean, cov_mean4(i,i+1:size(cov_mean0,1))];
    set_vec_median = [set_vec_median, cov_median4(i,i+1:size(cov_mean0,1))];
    set_vec_mode = [set_vec_mode, cov_mode4(i,i+1:size(cov_mean0,1))];
    set_vec_max = [set_vec_max, cov_max4(i,i+1:size(cov_mean0,1))];
    set_vec_min = [set_vec_min, cov_min4(i,i+1:size(cov_mean0,1))];
    set_vec_skewness = [set_vec_skewness, cov_skewness4(i,i+1:size(cov_mean0,1))];
    set_vec_kurtosis = [set_vec_kurtosis, cov_kurtosis4(i,i+1:size(cov_mean0,1))];
end

min_stat=[];
min_stat = [min_stat, min(set_vec_mean)];
min_stat = [min_stat, min(set_vec_median)];
min_stat = [min_stat, min(set_vec_mode)];
min_stat = [min_stat, min(set_vec_max)];
min_stat = [min_stat, min(set_vec_min)];
min_stat = [min_stat, min(set_vec_skewness)];
min_stat = [min_stat, min(set_vec_kurtosis)];

min_all = min(min_stat)

max_stat=[];
max_stat = [max_stat, max(set_vec_mean)];
max_stat = [max_stat, max(set_vec_median)];
max_stat = [max_stat, max(set_vec_mode)];
max_stat = [max_stat, max(set_vec_max)];
max_stat = [max_stat, max(set_vec_min)];
max_stat = [max_stat, max(set_vec_skewness)];
max_stat = [max_stat, max(set_vec_kurtosis)];

max_all = max(max_stat)

%plot(vec_mean4, 'Marker', 'o', 'DisplayName','mean')
% hold on
%plot(vec_median4, 'Marker', 'x', 'DisplayName','median')
% hold on
%plot(vec_mode4, 'Marker', '+', 'DisplayName','mode')
%hold on
%plot(vec_max4, 'Marker', '*', 'DisplayName','max')
% hold on
%plot(vec_min4,  'Marker', 'p', 'DisplayName','min')
% hold on
%plot(vec_skewness4, 'Marker', 's', 'DisplayName','skewness')
% hold on
%plot(vec_kurtosis4, 'Marker', 'd', 'DisplayName','kurtosis')


%%%%% new plot all%%%%%
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
hold on
plot(set_vec_skewness, 'Marker', 's', 'DisplayName','skewness')
hold on
plot(set_vec_kurtosis, 'Marker', 'd', 'DisplayName','kurtosis')

legend
%axis([1 92 -0.5 9]) % For angle
axis([1 4186 -2 13]) % For side angle %% side = -1.8898 12.0550
%axis([1 195 -0.5 31]) % For emoji
%axis([1 18915 -7 120]) % For side emoji %% side = -6.3843 119.1769
%axis([1 168 -0.5 16]) % For center illumination
%axis([1 14028 -2 24]) % For side illumination %% side = -1.7253 23.4257
title('All statistics method')

%%%%% each plot %%%%%
figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_mean, 'DisplayName','mean')
legend
%axis([1 n92 -0.5 9]) % For angle
%axis([1 195 -0.5 31]) % For emoji
%axis([1 168 -0.5 16]) % For illumination
%axis([1 14028 -2 24]) % For side illumination %% side = -1.7253 23.4257
%axis([1 18915 -7 120]) % For side emoji %% side = -6.3843 119.1769
axis([1 4186 -2 13]) % For side angle %% side = -1.8898 12.0550
title('mean')

figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_median, 'DisplayName','median')
legend
%axis([1 92 -0.5 9]) % For angle
%axis([1 195 -0.5 31]) % For emoji
%axis([1 168 -0.5 16]) % For illumination
%axis([1 14028 -2 24]) % For side illumination %% side = -1.7253 23.4257
%axis([1 18915 -7 120]) % For side emoji %% side = -6.3843 119.1769
axis([1 4186 -2 13]) % For side angle %% side = -1.8898 12.0550
title('median')

figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_mode, 'DisplayName','mode')
legend
%axis([1 92 -0.5 9]) % For angle
%axis([1 195 -0.5 31]) % For emoji
%axis([1 168 -0.5 16]) % For illumination
%axis([1 14028 -2 24]) % For side illumination %% side = -1.7253 23.4257
%axis([1 18915 -7 120]) % For side emoji %% side = -6.3843 119.1769
axis([1 4186 -2 13]) % For side angle %% side = -1.8898 12.0550
title('mode')

figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_max, 'DisplayName','max')
legend
%axis([1 92 -0.5 9]) % For angle
%axis([1 195 -0.5 31]) % For emoji
%axis([1 168 -0.5 16]) % For illumination
%axis([1 14028 -2 24]) % For side illumination %% side = -1.7253 23.4257
%axis([1 18915 -7 120]) % For side emoji %% side = -6.3843 119.1769
axis([1 4186 -2 13]) % For side angle %% side = -1.8898 12.0550
title('max')

figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_min, 'DisplayName','min')
legend
%axis([1 92 -0.5 9]) % For angle
%axis([1 195 -0.5 31]) % For emoji
%axis([1 168 -0.5 16]) % For illumination
%axis([1 14028 -2 24]) % For side illumination %% side = -1.7253 23.4257
%axis([1 18915 -7 120]) % For side emoji %% side = -6.3843 119.1769
axis([1 4186 -2 13]) % For side angle %% side = -1.8898 12.0550
title('min')

figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_skewness, 'DisplayName','skewness')
legend
%axis([1 92 -0.5 9]) % For angle
%axis([1 195 -0.5 31]) % For emoji
%axis([1 168 -0.5 16]) % For illumination
%axis([1 14028 -2 24]) % For side illumination %% side = -1.7253 23.4257
%axis([1 18915 -7 120]) % For side emoji %% side = -6.3843 119.1769
axis([1 4186 -2 13]) % For side angle %% side = -1.8898 12.0550
title('skewness')

figure()
set(gcf, 'Position', get(0, 'Screensize'));
plot(set_vec_kurtosis, 'DisplayName','kurtosis')
legend
%axis([1 92 -0.5 9]) % For angle
%axis([1 195 -0.5 31]) % For emoji
%axis([1 168 -0.5 16]) % For illumination
%axis([1 14028 -2 24]) % For side illumination %% side = -1.7253 23.4257
%axis([1 18915 -7 120]) % For side emoji %% side = -6.3843 119.1769
axis([1 4186 -2 13]) % For side angle %% side = -1.8898 12.0550
title('kurtosis')

stop = 0;
%%% All Render %%%
% figure()
% boxplot(all_stat0());
% hold on
% plot(vec_mean0(),'g');
count = 0;

%%%%% Polyfit %%%%%
x = 1: size(vec_mean0, 2);
%%% For angle %%%
y = vec_mean0;
%%% For emoji, illumination %%%
%y = vec_min0;

poly = polyfit(x, y, 1);
poly_val = polyval(poly, y);

%%%%% Test polyfit with boxplot %%%%%
boxplot(all_stat0(:,501:550))
hold on
plot(vec_mean0(1,501:550),'g')
hold on
plot(poly_val(1,501:550), 'r')

%%% Part Render %%%
%%% Finish in 1 round %%%
size_cov = size(cov_mean0, 1);
for i = 1: size(cov_mean0, 1)
    
    %%%%% Y height For Angle %%%%%
    ylim([-2 12])
    
    %%%%% Save Function%%%%%
    export_fig(sprintf('figure-angle%d',count),'-jpg');
    count = count+1;
    
    start = size_cov * (i-1) + 1;
    stop = size_cov * i
    figure()
    
    boxplot(all_stat0(:,start:stop));
    hold on
    plot(vec_mean0(1,start:stop),'g');    
    
end

%%%%%%%%%%% Finish in 2 round %%%%%%%%%%%%

%%%%% Round 1 %%%%%
%%% for emoji %%%
size_cov1 = 98;
%%% for illumination %%%
size_cov1 = size(cov_mean0, 1) / 2;

for i = 1: size_cov1
    
    %%%%% Y height For Angle %%%%%
    ylim([-2 12])
    
    %%%%% Save Function%%%%%
    export_fig(sprintf('figure-angle%d',count),'-jpg');
    count = count+1;
    
    start = size(cov_mean0, 1) * (i-1) + 1;
    stop = size(cov_mean0, 1) * i
    figure()
    
    boxplot(all_stat0(:,start:stop));
    hold on
    plot(vec_mean0(1,start:stop),'g');    
    
end

%%%%% Round 2 %%%%%
%%% for emoji %%%
size_cov2 = 97;
%%% for illumination %%%
size_cov2 = size(cov_mean0, 1);

start_loop = size_cov1+1;
for i = start_loop: size_cov2
    
    %%%%% Y height For Angle %%%%%
    ylim([-2 12])
    
    %%%%% Save Function%%%%%
    export_fig(sprintf('figure-angle%d',count),'-jpg');
    count = count+1;
    
    start = size(cov_mean0, 1) * (i-1) + 1;
    stop = size(cov_mean0, 1) * i
    figure()
    
    boxplot(all_stat0(:,start:stop));
    hold on
    plot(vec_mean0(1,start:stop),'g');    
    
end

%%%%% For last figure %%%%%
ylim([-2 12])
export_fig(sprintf('figure-angle%d',count),'-jpg');
count = count+1;
    
%%%%%%%%%%%%% note for editor %%%%%%%%%%%%%%
% angle vector = 1 x 8646
% emoji vector = 1 x 38025
% illumination vector = 1 x 28224




