function [set_vec_mean,set_vec_median,set_vec_mode,set_vec_max,set_vec_min,set_vec_skewness, set_vec_kurtosis, plt_axis] = plotData(path, data_type, data_line, filter)

set_vec_mean = [];
set_vec_median = [];
set_vec_mode = [];
set_vec_max = [];
set_vec_min = [];
set_vec_skewness = [];
set_vec_kurtosis = [];

if data_type == "ori"
    [cov_mean, cov_median, cov_mode, cov_max, cov_min, cov_skewness, cov_kurtosis] = OriDataForPlot(path);
elseif data_type == "nom"
    [cov_mean, cov_median, cov_mode, cov_max, cov_min, cov_skewness, cov_kurtosis] = nomalizeDataForPlot(path);
elseif data_type == "all"
    [cov_mean, cov_median, cov_mode, cov_max, cov_min, cov_skewness, cov_kurtosis] = OriDataForPlot(path);
    set_vec_mean = cov_mean;
    set_vec_median = cov_median;
    set_vec_mode = cov_mode;
    set_vec_max = cov_max;
    set_vec_min = cov_min;
    set_vec_skewness = cov_skewness;
    set_vec_kurtosis = cov_kurtosis;
end
if data_type == "center"
    if filter == "no"
    %%%% for center matrix %%%%%
        for i = 1:size(cov_mean, 1)
            set_vec_mean = [set_vec_mean, cov_mean(i,i)];
            set_vec_median = [set_vec_median, cov_median(i,i)];
            set_vec_mode = [set_vec_mode, cov_mode(i,i)];
            set_vec_max = [set_vec_max, cov_max(i,i)];
            set_vec_min = [set_vec_min, cov_min(i,i)];
            set_vec_skewness = [set_vec_skewness, cov_skewness(i,i)];
            set_vec_kurtosis = [set_vec_kurtosis, cov_kurtosis(i,i)];
        end
    elseif filter == "yes"
    %%%% for center matrix with Guassian filter%%%%%
        for i = 1:size(cov_mean, 1)
            set_vec_mean = imgaussfilt([set_vec_mean, cov_mean(i,i)]);
            set_vec_median = imgaussfilt([set_vec_median, cov_median(i,i)]);
            set_vec_mode = imgaussfilt([set_vec_mode, cov_mode(i,i)]);
            set_vec_max = imgaussfilt([set_vec_max, cov_max(i,i)]);
            set_vec_min = imgaussfilt([set_vec_min, cov_min(i,i)]);
            set_vec_skewness = imgaussfilt([set_vec_skewness, cov_skewness(i,i)]);
            set_vec_kurtosis = imgaussfilt([set_vec_kurtosis, cov_kurtosis(i,i)]);
        end
    end
elseif data_type == "side"
    %%%%% for side matrix %%%%%
    size_cov = size(nom_cov_mean, 1);
    for i = 1:size_cov
        set_vec_mean = [set_vec_mean, cov_mean(i,i+1:size_cov)];
        set_vec_median = [set_vec_median, cov_median(i,i+1:size_cov)];
        set_vec_mode = [set_vec_mode, cov_mode(i,i+1:size_cov)];
        set_vec_max = [set_vec_max, cov_max(i,i+1:size_cov)];
        set_vec_min = [set_vec_min, cov_min(i,i+1:size_cov)];
        set_vec_skewness = [set_vec_skewness, cov_skewness(i,i+1:size_cov)];
        set_vec_kurtosis = [set_vec_kurtosis, cov_kurtosis(i,i+1:size_cov)];
    end

    %%%%% for side matrix with Guassian filter %%%%%
    size_cov = size(nom_cov_mean, 1);
    for i = 1:size_cov
        set_vec_mean = imgaussfilt([set_vec_mean, cov_mean(i,i+1:size_cov)]);
        set_vec_median = imgaussfilt([set_vec_median, cov_median(i,i+1:size_cov)]);
        set_vec_mode = imgaussfilt([set_vec_mode, cov_mode(i,i+1:size_cov)]);
        set_vec_max = imgaussfilt([set_vec_max, cov_max(i,i+1:size_cov)]);
        set_vec_min = imgaussfilt([set_vec_min, cov_min(i,i+1:size_cov)]);
        set_vec_skewness = imgaussfilt([set_vec_skewness, cov_skewness(i,i+1:size_cov)]);
        set_vec_kurtosis = imgaussfilt([set_vec_kurtosis, cov_kurtosis(i,i+1:size_cov)]);
    end
end


%axis([1 105 0 1]) % For center angle
%axis([1 4800 0 1]) % For side angle
%axis([1 225 0 1]) % For center emoji
%axis([1 22000 0 1]) % For side emoji
%axis([1 195 0 1]) % For center illumination
axis([1 16000 0 1]) % For side illumination

%axis([1 92 -0.5 9]) % For angle
axis([1 4186 -2 13]) % For side angle %% side = -1.8898 12.0550
%axis([1 195 -0.5 31]) % For emoji
%axis([1 18915 -7 120]) % For side emoji %% side = -6.3843 119.1769
%axis([1 168 -0.5 16]) % For center illumination
%axis([1 14028 -2 24]) % For side illumination %% side = -1.7253 23.4257

if path == "angle"
    if data_type == "nom"
        if data_line == "center"
            plt_axis = [1 105 0 1];
        elseif data_line == "side"
            plt_axis = [1 92 -0.5 9];
        end
    elseif data_type == "ori"
        if data_line == "center"
            plt_axis = [1 92 -0.5 9];
        elseif data_line == "side"
            plt_axis = [1 4186 -2 13];
        end
    elseif data_type == "all"
        plt_axis = [0 12.5 0.9 2.5];
    end
    
elseif path == "emoji"
    if data_type == "nom"
        if data_line == "center"
            plt_axis = [1 225 0 1];
        elseif data_line == "side"
            plt_axis = [1 22000 0 1];
        end
    elseif data_type == "ori"
        if data_line == "center"
            plt_axis = [1 195 -0.5 31];
        elseif data_line == "side"
            plt_axis = [1 18915 -7 120];
        end
    elseif data_type == "all"
        plt_axis = [0 110 0.9 2.5];
    end
elseif path == "illumination"
    if data_type == "nom"
        if data_line == "center"
            plt_axis = [1 195 0 1];
        elseif data_line == "side"
            plt_axis = [1 16000 0 1];
        end
    elseif data_type == "ori"
        if data_line == "center"
            plt_axis = [1 168 -0.5 16];
        elseif data_line == "side"
            plt_axis = [1 14028 -2 24];
        end
    elseif data_type == "all"
        plt_axis = [0 30 0.9 2.5];
    end
end

end