clear all
%close all

%%%%% Change PX which you want to calculate %%%%%
% If px = 0;
[cov_mean0, cov_median0, cov_mode0, cov_max0, cov_min0, cov_skewness0, cov_kurtosis0] = statMethodValue(0);

% If px = 1;
[cov_mean1, cov_median1, cov_mode1, cov_max1, cov_min1, cov_skewness1, cov_kurtosis1] = statMethodValue(1);

% If px = 2;
[cov_mean2, cov_median2, cov_mode2, cov_max2, cov_min2, cov_skewness2, cov_kurtosis2] = statMethodValue(2);

% If px = 3;
[cov_mean3, cov_median3, cov_mode3, cov_max3, cov_min3, cov_skewness3, cov_kurtosis3] = statMethodValue(3);

% If px = 4;
[cov_mean4, cov_median4, cov_mode4, cov_max4, cov_min4, cov_skewness4, cov_kurtosis4] = statMethodValue(4);

% If px = 5;
[cov_mean5, cov_median5, cov_mode5, cov_max5, cov_min5, cov_skewness5, cov_kurtosis5] = statMethodValue(5);

% If px = 6;
[cov_mean6, cov_median6, cov_mode6, cov_max6, cov_min6, cov_skewness6, cov_kurtosis6] = statMethodValue(6);

%If px = 7;
[cov_mean7, cov_median7, cov_mode7, cov_max7, cov_min7, cov_skewness7, cov_kurtosis7] = statMethodValue(7);

% If px = 8;
[cov_mean8, cov_median8, cov_mode8, cov_max8, cov_min8, cov_skewness8, cov_kurtosis8] = statMethodValue(8);

% If px = 9;
[cov_mean9, cov_median9, cov_mode9, cov_max9, cov_min9, cov_skewness9, cov_kurtosis9] = statMethodValue(9);

%%%%% Transform cov_statistics_method to vector %%%%%
%%%%% vector size is 1 x XXX %%%%%

sizeVec = size(cov_mean0, 1) * 2;

vec_mean0 = zeros(1, sizeVec);
vec_median0 = zeros(1, sizeVec);
vec_mode0 = zeros(1, sizeVec);
vec_max0 = zeros(1, sizeVec);
vec_min0 = zeros(1, sizeVec);
vec_skewness0 = zeros(1, sizeVec);
vec_kurtosis0 = zeros(1, sizeVec);

vec_mean1 = zeros(1, sizeVec);
vec_median1 = zeros(1, sizeVec);
vec_mode1 = zeros(1, sizeVec);
vec_max1 = zeros(1, sizeVec);
vec_min1 = zeros(1, sizeVec);
vec_skewness1 = zeros(1, sizeVec);
vec_kurtosis1 = zeros(1, sizeVec);

vec_mean2 = zeros(1, sizeVec);
vec_median2 = zeros(1, sizeVec);
vec_mode2 = zeros(1, sizeVec);
vec_max2 = zeros(1, sizeVec);
vec_min2 = zeros(1, sizeVec);
vec_skewness2 = zeros(1, sizeVec);
vec_kurtosis2 = zeros(1, sizeVec);

vec_mean3 = zeros(1, sizeVec);
vec_median3 = zeros(1, sizeVec);
vec_mode3 = zeros(1, sizeVec);
vec_max3 = zeros(1, sizeVec);
vec_min3 = zeros(1, sizeVec);
vec_skewness3 = zeros(1, sizeVec);
vec_kurtosis3 = zeros(1, sizeVec);

vec_mean4 = zeros(1, sizeVec);
vec_median4 = zeros(1, sizeVec);
vec_mode4 = zeros(1, sizeVec);
vec_max4 = zeros(1, sizeVec);
vec_min4 = zeros(1, sizeVec);
vec_skewness4 = zeros(1, sizeVec);
vec_kurtosis4 = zeros(1, sizeVec);

vec_mean5 = zeros(1, sizeVec);
vec_median5 = zeros(1, sizeVec);
vec_mode5 = zeros(1, sizeVec);
vec_max5 = zeros(1, sizeVec);
vec_min5 = zeros(1, sizeVec);
vec_skewness5 = zeros(1, sizeVec);
vec_kurtosis5 = zeros(1, sizeVec);

vec_mean6 = zeros(1, sizeVec);
vec_median6 = zeros(1, sizeVec);
vec_mode6 = zeros(1, sizeVec);
vec_max6 = zeros(1, sizeVec);
vec_min6 = zeros(1, sizeVec);
vec_skewness6 = zeros(1, sizeVec);
vec_kurtosis6 = zeros(1, sizeVec);

vec_mean7 = zeros(1, sizeVec);
vec_median7 = zeros(1, sizeVec);
vec_mode7 = zeros(1, sizeVec);
vec_max7 = zeros(1, sizeVec);
vec_min7 = zeros(1, sizeVec);
vec_skewness7 = zeros(1, sizeVec);
vec_kurtosis7 = zeros(1, sizeVec);

vec_mean8 = zeros(1, sizeVec);
vec_median8 = zeros(1, sizeVec);
vec_mode8 = zeros(1, sizeVec);
vec_max8 = zeros(1, sizeVec);
vec_min8 = zeros(1, sizeVec);
vec_skewness8 = zeros(1, sizeVec);
vec_kurtosis8 = zeros(1, sizeVec);

vec_mean9 = zeros(1, sizeVec);
vec_median9 = zeros(1, sizeVec);
vec_mode9 = zeros(1, sizeVec);
vec_max9 = zeros(1, sizeVec);
vec_min9 = zeros(1, sizeVec);
vec_skewness9 = zeros(1, sizeVec);
vec_kurtosis9 = zeros(1, sizeVec);

for i = 1: size(cov_mean0, 1)
    vec_mean0 = [vec_mean0, cov_mean0(i,:)];
    vec_median0 = [vec_median0, cov_median0(i,:)];
    vec_mode0 = [vec_mode0, cov_mode0(i,:)];
    vec_max0 = [vec_max0, cov_max0(i,:)];
    vec_min0 = [vec_min0, cov_min0(i,:)];
    vec_skewness0 = [vec_skewness0, cov_skewness0(i,:)];
    vec_kurtosis0 = [vec_kurtosis0, cov_kurtosis0(i,:)];
    
    vec_mean1 = [vec_mean1, cov_mean1(i,:)];
    vec_median1 = [vec_median1, cov_median1(i,:)];
    vec_mode1 = [vec_mode1, cov_mode1(i,:)];
    vec_max1 = [vec_max1, cov_max1(i,:)];
    vec_min1 = [vec_min1, cov_min1(i,:)];
    vec_skewness1 = [vec_skewness1, cov_skewness1(i,:)];
    vec_kurtosis1 = [vec_kurtosis1, cov_kurtosis1(i,:)];
    
    vec_mean2 = [vec_mean2, cov_mean2(i,:)];
    vec_median2 = [vec_median2, cov_median2(i,:)];
    vec_mode2 = [vec_mode2, cov_mode2(i,:)];
    vec_max2 = [vec_max2, cov_max2(i,:)];
    vec_min2 = [vec_min2, cov_min2(i,:)];
    vec_skewness2 = [vec_skewness2, cov_skewness2(i,:)];
    vec_kurtosis2 = [vec_kurtosis2, cov_kurtosis2(i,:)];
    
    vec_mean3 = [vec_mean3, cov_mean3(i,:)];
    vec_median3 = [vec_median3, cov_median3(i,:)];
    vec_mode3 = [vec_mode3, cov_mode3(i,:)];
    vec_max3 = [vec_max3, cov_max3(i,:)];
    vec_min3 = [vec_min3, cov_min3(i,:)];
    vec_skewness3 = [vec_skewness3, cov_skewness3(i,:)];
    vec_kurtosis3 = [vec_kurtosis3, cov_kurtosis3(i,:)];
    
    vec_mean4 = [vec_mean4, cov_mean4(i,:)];
    vec_median4 = [vec_median4, cov_median4(i,:)];
    vec_mode4 = [vec_mode4, cov_mode4(i,:)];
    vec_max4 = [vec_max4, cov_max4(i,:)];
    vec_min4 = [vec_min4, cov_min4(i,:)];
    vec_skewness4 = [vec_skewness4, cov_skewness4(i,:)];
    vec_kurtosis4 = [vec_kurtosis4, cov_kurtosis4(i,:)];
    
    vec_mean5 = [vec_mean5, cov_mean5(i,:)];
    vec_median5 = [vec_median5, cov_median5(i,:)];
    vec_mode5 = [vec_mode5, cov_mode5(i,:)];
    vec_max5 = [vec_max5, cov_max5(i,:)];
    vec_min5 = [vec_min5, cov_min5(i,:)];
    vec_skewness5 = [vec_skewness5, cov_skewness5(i,:)];
    vec_kurtosis5 = [vec_kurtosis5, cov_kurtosis5(i,:)];
    
    vec_mean6 = [vec_mean6, cov_mean6(i,:)];
    vec_median6 = [vec_median6, cov_median6(i,:)];
    vec_mode6 = [vec_mode6, cov_mode6(i,:)];
    vec_max6 = [vec_max6, cov_max6(i,:)];
    vec_min6 = [vec_min6, cov_min6(i,:)];
    vec_skewness6 = [vec_skewness6, cov_skewness6(i,:)];
    vec_kurtosis6 = [vec_kurtosis6, cov_kurtosis6(i,:)];
    
    vec_mean7 = [vec_mean7, cov_mean7(i,:)];
    vec_median7 = [vec_median7, cov_median7(i,:)];
    vec_mode7 = [vec_mode7, cov_mode7(i,:)];
    vec_max7 = [vec_max7, cov_max7(i,:)];
    vec_min7 = [vec_min7, cov_min7(i,:)];
    vec_skewness7 = [vec_skewness7, cov_skewness7(i,:)];
    vec_kurtosis7 = [vec_kurtosis7, cov_kurtosis7(i,:)];
    
    vec_mean8 = [vec_mean8, cov_mean8(i,:)];
    vec_median8 = [vec_median8, cov_median8(i,:)];
    vec_mode8 = [vec_mode8, cov_mode8(i,:)];
    vec_max8 = [vec_max8, cov_max8(i,:)];
    vec_min8 = [vec_min8, cov_min8(i,:)];
    vec_skewness8 = [vec_skewness8, cov_skewness8(i,:)];
    vec_kurtosis8 = [vec_kurtosis8, cov_kurtosis8(i,:)];
    
    vec_mean9 = [vec_mean9, cov_mean9(i,:)];
    vec_median9 = [vec_median9, cov_median9(i,:)];
    vec_mode9 = [vec_mode9, cov_mode9(i,:)];
    vec_max9 = [vec_max9, cov_max9(i,:)];
    vec_min9 = [vec_min9, cov_min9(i,:)];
    vec_skewness9 = [vec_skewness9, cov_skewness9(i,:)];
    vec_kurtosis9 = [vec_kurtosis9, cov_kurtosis9(i,:)];
    
end




