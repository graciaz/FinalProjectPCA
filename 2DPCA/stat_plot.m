clc
clear all
close all

%%%%% Download data %%%%%
load('stat_vector_angle');
%load('stat_vector_emoji');
%load('stat_vector_illumination');

%%%%% IMPORTANT PART %%%%%
%%% Please note your old round to make sure you don't forget it
%%% List old round = x,y,z

% old_round = 0;
% 
% %%%%% start value = old round * 2 + 1
% start = 1;
% 
% stop = 56;

figure()
boxplot(all_stat0(:,500:550));
hold on
plot(vec_mean0(1,500:550),'g');

size_cov = size(cov_mean0, 1);
for i = 1: size(cov_mean0, 1)
    start = size_cov * (i-1) + 1;
    stop = size_cov * i
    figure()
    boxplot(all_stat0(:,start:stop));
    hold on
    plot(vec_mean0(1,start:stop),'g');
end
    

%%%%%%%%%%%%% note for editor %%%%%%%%%%%%%%
% angle vector = 1 x 8646
% emoji vector = 1 x 38025
% illumination vector = 1 x 28224
%%% figure size angle = 92/2 = [46, 46], round = 92*2 = 184
%%% figure size emoji = 195/4 = [48, 49, 49, 49], round = 195*4 = 768
%%% figure size illumination = 168/3 = [56, 56, 56], round = 168*3 = 504

% ss = size(cov_mean0, 1);
% list_start =[];
% list_stop = [];
% amount_vec = 46;
% for i = 1: ss
%     list_start = [list_start, amount_vec * (i-1) + 1];
%     list_stop = [list_start, amount_vec * i];
% end





