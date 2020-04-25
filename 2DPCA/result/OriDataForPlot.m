function [cov_mean, cov_median, cov_mode, cov_max, cov_min, cov_skewness, cov_kurtosis] = OriDataForPlot(path)

cov_mean = [];
cov_median = [];
cov_mode = [];
cov_max = [];
cov_min = [];
cov_skewness = [];
cov_kurtosis = [];

if path == "angle"
    load('stat_vector_angle');
    
    cov_mean =  cov_mean4;
    cov_median = cov_median4;
    cov_mode = cov_mode4;
    cov_max = cov_max4;
    cov_min = cov_min4;
    cov_skewness = cov_skewness4;
    cov_kurtosis = cov_kurtosis4;
    
elseif path == "emoji"
    load('stat_vector_emoji');

    cov_mean =  cov_mean6;
    cov_median = cov_median6;
    cov_mode = cov_mode6;
    cov_max = cov_max6;
    cov_min = cov_min6;
    cov_skewness = cov_skewness6;
    cov_kurtosis = cov_kurtosis6;  
    
elseif path == "illumination"
    load('stat_vector_illumination');
    
    cov_mean =  cov_mean8;
    cov_median = cov_median8;
    cov_mode = cov_mode8;
    cov_max = cov_max8;
    cov_min = cov_min8;
    cov_skewness = cov_skewness8;
    cov_kurtosis = cov_kurtosis8;
end
end