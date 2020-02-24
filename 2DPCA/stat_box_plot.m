clear all
close all
%%%%%%%%% 3 data set %%%%%%%%%
%%%%% Define variable for each path because each path need to download data
%%%%% that they have the same name of variable 
% load('stat_illumination');
% vec_min0_illu = vec_min0;
% %vec_max0_illu = vec_max0;
% 
% load('stat_emoji');
% vec_min0_emoji = vec_min0;
% 
% load('stat_angle');
% vec_min0_angle = vec_min0;

%%%%%%%%% 1 path %%%%%%%%%
load('stat_angle');
%load('stat_emoji');
%load('stat_illumination');

%%%%% Default format box plot %%%%%
% figure()
% boxplot(cov_min0(1:50,1:50))%,
% title('PX=0 min illumination')

%%%%% Compact format box plot %%%%%
% figure()
% boxplot(cov_max0(1:50,1:50), 'PlotStyle', 'compact')
% title('PX=0 max illumination')

%%%%% Grouping variable %%%%%
%%% For 3 data set
% group_angle = repmat({'angle'},1,8648);
% group_emoji = repmat({'emoji'},1, 38415);
% group_illu = repmat({'illumination'},1,28560);
% group = [group_angle, group_emoji, group_illu];

%%% For angle PX=0-9 
group_px0 = repmat({'px=0'},1,8648);
group_px1 = repmat({'px=1'},1,8648);
group_px2 = repmat({'px=2'},1,8648);
group_px3 = repmat({'px=3'},1,8648);
group_px4 = repmat({'px=4'},1,8648);
group_px5 = repmat({'px=5'},1,8648);
group_px6 = repmat({'px=6'},1,8648);
group_px7 = repmat({'px=7'},1,8648);
group_px8 = repmat({'px=8'},1,8648);
group_px9 = repmat({'px=9'},1,8648);
group = [group_px0, group_px1, group_px2, group_px3, group_px4, group_px5, group_px6, group_px7, group_px8, group_px9];

%%% For emoji PX=0-9 
% group_px0 = repmat({'px=0'},1,38415);
% group_px1 = repmat({'px=1'},1,38415);
% group_px2 = repmat({'px=2'},1,38415);
% group_px3 = repmat({'px=3'},1,38415);
% group_px4 = repmat({'px=4'},1,38415);
% group_px5 = repmat({'px=5'},1,38415);
% group_px6 = repmat({'px=6'},1,38415);
% group_px7 = repmat({'px=7'},1,38415);
% group_px8 = repmat({'px=8'},1,38415);
% group_px9 = repmat({'px=9'},1,38415);
% group = [group_px0, group_px1, group_px2, group_px3, group_px4, group_px5, group_px6, group_px7, group_px8, group_px9];

% %%% For illumination PX=0-9 
% group_px0 = repmat({'px=0'},1,28560);
% group_px1 = repmat({'px=1'},1,28560);
% group_px2 = repmat({'px=2'},1,28560);
% group_px3 = repmat({'px=3'},1,28560);
% group_px4 = repmat({'px=4'},1,28560);
% group_px5 = repmat({'px=5'},1,28560);
% group_px6 = repmat({'px=6'},1,28560);
% group_px7 = repmat({'px=7'},1,28560);
% group_px8 = repmat({'px=8'},1,28560);
% group_px9 = repmat({'px=9'},1,28560);
% group = [group_px0, group_px1, group_px2, group_px3, group_px4, group_px5, group_px6, group_px7, group_px8, group_px9];

%%%%% Data for 3 data set %%%%%
%%% For min
% data = [vec_min0_angle, vec_min0_emoji, vec_min0_illu];

%%%%% Data for 1 path %%%%%
%%% For min
data = [vec_min0, vec_min1, vec_min2, vec_min3, vec_min4, vec_min5, vec_min6, vec_min7, vec_min8, vec_min9];

figure()
boxplot(data, group)
% title('MIN illumination')
%title('MIN emoji')
title('MIN angle')
%title('PX=0')
