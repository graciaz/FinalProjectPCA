function [nom_cov_mean, nom_cov_median, nom_cov_mode, nom_cov_max, nom_cov_min, nom_cov_skewness, nom_cov_kurtosis] = nomalizeDataForPlot(path)

nom_cov_mean = [];
nom_cov_median = [];
nom_cov_mode = [];
nom_cov_max = [];
nom_cov_min = [];
nom_cov_skewness = [];
nom_cov_kurtosis = [];

if path == "angle"
    load('stat_vector_angle');
    
    nom_cov_mean =  mat2gray(cov_mean4);
    nom_cov_median = mat2gray(cov_median4);
    nom_cov_mode = mat2gray(cov_mode4);
    nom_cov_max = mat2gray(cov_max4);
    nom_cov_min = mat2gray(cov_min4);
    nom_cov_skewness = mat2gray(cov_skewness4);
    nom_cov_kurtosis = mat2gray(cov_kurtosis4);
elseif path == "emoji"
    load('stat_vector_emoji');

    nom_cov_mean =  mat2gray(cov_mean6);
    nom_cov_median = mat2gray(cov_median6);
    nom_cov_mode = mat2gray(cov_mode6);
    nom_cov_max = mat2gray(cov_max6);
    nom_cov_min = mat2gray(cov_min6);
    nom_cov_skewness = mat2gray(cov_skewness6);
    nom_cov_kurtosis = mat2gray(cov_kurtosis6);  
elseif path == "illumination"
    load('stat_vector_illumination');
    
    nom_cov_mean =  mat2gray(cov_mean8);
    nom_cov_median = mat2gray(cov_median8);
    nom_cov_mode = mat2gray(cov_mode8);
    nom_cov_max = mat2gray(cov_max8);
    nom_cov_min = mat2gray(cov_min8);
    nom_cov_skewness = mat2gray(cov_skewness8);
    nom_cov_kurtosis = mat2gray(cov_kurtosis8);
end
end