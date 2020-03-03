clc
clear all
close all

%%%%% Download data %%%%%
load('stat_vector_angle');
%load('stat_vector_emoji');
%load('stat_vector_illumination');

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




