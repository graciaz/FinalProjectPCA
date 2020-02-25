clc
clear all

%%%%% Download data %%%%%
%load('stat_angle');
%load('stat_emoji');
load('stat_illumination');
    
size_data = size(vec_mean0, 2);
all_stat0 = [];
all_stat1 = [];
all_stat2 = [];
all_stat3 = [];
all_stat4 = [];
all_stat5 = [];
all_stat6 = [];
all_stat7 = [];
all_stat8 = [];
all_stat9 = [];

all_mean = [];
all_median = [];
all_mode = [];
all_max = [];
all_min = [];
all_skewness = [];
all_kurtosis = [];
for i = 1: size_data
    stat_data = [];
    %%%%% PX=0 %%%%%
    stat_data = [stat_data; vec_mean0(1,i)];
    stat_data = [stat_data; vec_median0(1,i)];
    stat_data = [stat_data; vec_mode0(1,i)];
    stat_data = [stat_data; vec_max0(1,i)];
    stat_data = [stat_data; vec_min0(1,i)];
    stat_data = [stat_data; vec_skewness0(1,i)];
    stat_data = [stat_data; vec_kurtosis0(1,i)];
    
    all_stat0 = [all_stat0, stat_data];
    
    %%%%% PX=1 %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_mean1(1,i)];
    stat_data = [stat_data; vec_median1(1,i)];
    stat_data = [stat_data; vec_mode1(1,i)];
    stat_data = [stat_data; vec_max1(1,i)];
    stat_data = [stat_data; vec_min1(1,i)];
    stat_data = [stat_data; vec_skewness1(1,i)];
    stat_data = [stat_data; vec_kurtosis1(1,i)];
    
    all_stat1 = [all_stat1, stat_data];
    
    %%%%% PX=2 %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_mean2(1,i)];
    stat_data = [stat_data; vec_median2(1,i)];
    stat_data = [stat_data; vec_mode2(1,i)];
    stat_data = [stat_data; vec_max2(1,i)];
    stat_data = [stat_data; vec_min2(1,i)];
    stat_data = [stat_data; vec_skewness2(1,i)];
    stat_data = [stat_data; vec_kurtosis2(1,i)];
    
    all_stat2 = [all_stat2, stat_data];
    
    %%%%% PX=3 %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_mean3(1,i)];
    stat_data = [stat_data; vec_median3(1,i)];
    stat_data = [stat_data; vec_mode3(1,i)];
    stat_data = [stat_data; vec_max3(1,i)];
    stat_data = [stat_data; vec_min3(1,i)];
    stat_data = [stat_data; vec_skewness3(1,i)];
    stat_data = [stat_data; vec_kurtosis3(1,i)];
    
    all_stat3 = [all_stat3, stat_data];
    
    %%%%% PX=4 %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_mean4(1,i)];
    stat_data = [stat_data; vec_median4(1,i)];
    stat_data = [stat_data; vec_mode4(1,i)];
    stat_data = [stat_data; vec_max4(1,i)];
    stat_data = [stat_data; vec_min4(1,i)];
    stat_data = [stat_data; vec_skewness4(1,i)];
    stat_data = [stat_data; vec_kurtosis4(1,i)];
    
    all_stat4 = [all_stat4, stat_data];
    
    %%%%% PX=5 %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_mean5(1,i)];
    stat_data = [stat_data; vec_median5(1,i)];
    stat_data = [stat_data; vec_mode5(1,i)];
    stat_data = [stat_data; vec_max5(1,i)];
    stat_data = [stat_data; vec_min5(1,i)];
    stat_data = [stat_data; vec_skewness5(1,i)];
    stat_data = [stat_data; vec_kurtosis5(1,i)];
    
    all_stat5 = [all_stat5, stat_data];
    
    %%%%% PX=6 %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_mean6(1,i)];
    stat_data = [stat_data; vec_median6(1,i)];
    stat_data = [stat_data; vec_mode6(1,i)];
    stat_data = [stat_data; vec_max6(1,i)];
    stat_data = [stat_data; vec_min6(1,i)];
    stat_data = [stat_data; vec_skewness6(1,i)];
    stat_data = [stat_data; vec_kurtosis6(1,i)];
    
    all_stat6 = [all_stat6, stat_data];
    
    %%%%% PX=7 %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_mean7(1,i)];
    stat_data = [stat_data; vec_median7(1,i)];
    stat_data = [stat_data; vec_mode7(1,i)];
    stat_data = [stat_data; vec_max7(1,i)];
    stat_data = [stat_data; vec_min7(1,i)];
    stat_data = [stat_data; vec_skewness7(1,i)];
    stat_data = [stat_data; vec_kurtosis7(1,i)];
    
    all_stat7 = [all_stat7, stat_data];
    
    %%%%% PX=8 %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_mean8(1,i)];
    stat_data = [stat_data; vec_median8(1,i)];
    stat_data = [stat_data; vec_mode8(1,i)];
    stat_data = [stat_data; vec_max8(1,i)];
    stat_data = [stat_data; vec_min8(1,i)];
    stat_data = [stat_data; vec_skewness8(1,i)];
    stat_data = [stat_data; vec_kurtosis8(1,i)];
    
    all_stat8 = [all_stat8, stat_data];
    
    %%%%% PX=3 %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_mean9(1,i)];
    stat_data = [stat_data; vec_median9(1,i)];
    stat_data = [stat_data; vec_mode9(1,i)];
    stat_data = [stat_data; vec_max9(1,i)];
    stat_data = [stat_data; vec_min9(1,i)];
    stat_data = [stat_data; vec_skewness9(1,i)];
    stat_data = [stat_data; vec_kurtosis9(1,i)];
    
    all_stat9 = [all_stat9, stat_data];
    
    %%%%% MEAN %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_mean0(1,i)];
    stat_data = [stat_data; vec_mean1(1,i)];
    stat_data = [stat_data; vec_mean2(1,i)];
    stat_data = [stat_data; vec_mean3(1,i)];
    stat_data = [stat_data; vec_mean4(1,i)];
    stat_data = [stat_data; vec_mean5(1,i)];
    stat_data = [stat_data; vec_mean6(1,i)];
    stat_data = [stat_data; vec_mean7(1,i)];
    stat_data = [stat_data; vec_mean8(1,i)];
    stat_data = [stat_data; vec_mean9(1,i)];
    
    all_mean = [all_mean, stat_data];
    
    %%%%% MEDIAN %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_median0(1,i)];
    stat_data = [stat_data; vec_median1(1,i)];
    stat_data = [stat_data; vec_median2(1,i)];
    stat_data = [stat_data; vec_median3(1,i)];
    stat_data = [stat_data; vec_median4(1,i)];
    stat_data = [stat_data; vec_median5(1,i)];
    stat_data = [stat_data; vec_median6(1,i)];
    stat_data = [stat_data; vec_median7(1,i)];
    stat_data = [stat_data; vec_median8(1,i)];
    stat_data = [stat_data; vec_median9(1,i)];
    
    all_median = [all_median, stat_data];
    
    %%%%% MODE %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_mode0(1,i)];
    stat_data = [stat_data; vec_mode1(1,i)];
    stat_data = [stat_data; vec_mode2(1,i)];
    stat_data = [stat_data; vec_mode3(1,i)];
    stat_data = [stat_data; vec_mode4(1,i)];
    stat_data = [stat_data; vec_mode5(1,i)];
    stat_data = [stat_data; vec_mode6(1,i)];
    stat_data = [stat_data; vec_mode7(1,i)];
    stat_data = [stat_data; vec_mode8(1,i)];
    stat_data = [stat_data; vec_mode9(1,i)];
    
    all_mode = [all_mode, stat_data];
    
    %%%%% MAX %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_max0(1,i)];
    stat_data = [stat_data; vec_max1(1,i)];
    stat_data = [stat_data; vec_max2(1,i)];
    stat_data = [stat_data; vec_max3(1,i)];
    stat_data = [stat_data; vec_max4(1,i)];
    stat_data = [stat_data; vec_max5(1,i)];
    stat_data = [stat_data; vec_max6(1,i)];
    stat_data = [stat_data; vec_max7(1,i)];
    stat_data = [stat_data; vec_max8(1,i)];
    stat_data = [stat_data; vec_max9(1,i)];
    
    all_max = [all_max, stat_data];
    
    %%%%% MIN %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_min0(1,i)];
    stat_data = [stat_data; vec_min1(1,i)];
    stat_data = [stat_data; vec_min2(1,i)];
    stat_data = [stat_data; vec_min3(1,i)];
    stat_data = [stat_data; vec_min4(1,i)];
    stat_data = [stat_data; vec_min5(1,i)];
    stat_data = [stat_data; vec_min6(1,i)];
    stat_data = [stat_data; vec_min7(1,i)];
    stat_data = [stat_data; vec_min8(1,i)];
    stat_data = [stat_data; vec_min9(1,i)];
    
    all_min = [all_min, stat_data];
    
    %%%%% SKEWNESS %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_skewness0(1,i)];
    stat_data = [stat_data; vec_skewness1(1,i)];
    stat_data = [stat_data; vec_skewness2(1,i)];
    stat_data = [stat_data; vec_skewness3(1,i)];
    stat_data = [stat_data; vec_skewness4(1,i)];
    stat_data = [stat_data; vec_skewness5(1,i)];
    stat_data = [stat_data; vec_skewness6(1,i)];
    stat_data = [stat_data; vec_skewness7(1,i)];
    stat_data = [stat_data; vec_skewness8(1,i)];
    stat_data = [stat_data; vec_skewness9(1,i)];
    
    all_skewness = [all_skewness, stat_data];
    
    %%%%% MEAN %%%%%
    stat_data = [];
    stat_data = [stat_data; vec_kurtosis0(1,i)];
    stat_data = [stat_data; vec_kurtosis1(1,i)];
    stat_data = [stat_data; vec_kurtosis2(1,i)];
    stat_data = [stat_data; vec_kurtosis3(1,i)];
    stat_data = [stat_data; vec_kurtosis4(1,i)];
    stat_data = [stat_data; vec_kurtosis5(1,i)];
    stat_data = [stat_data; vec_kurtosis6(1,i)];
    stat_data = [stat_data; vec_kurtosis7(1,i)];
    stat_data = [stat_data; vec_kurtosis8(1,i)];
    stat_data = [stat_data; vec_kurtosis9(1,i)];
    
    all_kurtosis = [all_kurtosis, stat_data];
end