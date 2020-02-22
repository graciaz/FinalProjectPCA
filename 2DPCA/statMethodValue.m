function [cov_mean, cov_median, cov_mode, cov_max, cov_min, cov_skewness, cov_kurtosis] = statMethodValue(PX)

%%%%% for illumination %%%%%
if PX == 0
    load('data0_illumination.mat');
elseif PX == 1
    load('data1_illumination.mat');
elseif PX == 2
    load('data2_illumination.mat');
elseif PX == 3
    load('data3_illumination.mat');
elseif PX == 4
    load('data4_illumination.mat');
elseif PX == 5
    load('data5_illumination.mat');
elseif PX == 6
    load('data6_illumination.mat');
elseif PX == 7
    load('data7_illumination.mat');
elseif PX == 8
    load('data8_illumination.mat');
elseif PX == 9
    load('data9_illumination.mat');
end

%%%%% for angle %%%%%
% if PX == 0
%     load('data0_angle.mat');
% elseif PX == 1
%     load('data1_angle.mat');
% elseif PX == 2
%     load('data2_angle.mat');
% elseif PX == 3
%     load('data3_angle.mat');
% elseif PX == 4
%     load('data4_angle.mat');
% elseif PX == 5
%     load('data5_angle.mat');
% elseif PX == 6
%     load('data6_angle.mat');
% elseif PX == 7
%     load('data7_angle.mat');
% elseif PX == 8
%     load('data8_angle.mat');
% elseif PX == 9
%     load('data9_angle.mat');
% end
% 
%%%% for emoji %%%%%
% if PX == 0
%     load('data0_emoji.mat');
% elseif PX == 1
%     load('data1_emoji.mat');
% elseif PX == 2
%     load('data2_emoji.mat');
% elseif PX == 3
%     load('data3_emoji.mat');
% elseif PX == 4
%     load('data4_emoji.mat');
% elseif PX == 5
%     load('data5_emoji.mat');
% elseif PX == 6
%     load('data6_emoji.mat');
% elseif PX == 7
%     load('data7_emoji.mat');
% elseif PX == 8
%     load('data8_emoji.mat');
% elseif PX == 9
%     load('data9_emoji.mat');
% end

ImgZeroMean = xTr - m;

%%%%% Statistics Method for calculate Covariance Matrix %%%%%

%%%%% For mean, median, mode %%%%%
cov_mean = mean(Y,3);
cov_median = median(Y,3);
cov_mode = mode(Y,3);

%%%%% for max %%%%%
cov_max = zeros(size(Y,1),size(Y,1));
for r = 1: size(Y, 1)
    for t = 1: size(Y, 1)
        cov_max(r, t) = max(Y(r,t,:));
    end
end

%%%%% for max and min %%%%%
cov_min = zeros(size(Y,1),size(Y,1));
for r = 1: size(Y, 1)
    for t = 1: size(Y, 1)
        cov_min(r, t) = min(Y(r,t,:));
    end
end

%%%% For Skewness %%%%%
[cov_skewness] = SkewnessCal(Y);

%%%%% For Kurtosis %%%%%
[cov_kurtosis] = kurtosisCal(Y);

end