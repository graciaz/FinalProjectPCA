clc
close all
clear all
img = imread('t (53)_25.pgm');
nom = mat2gray(img);

figure()
imagesc(nom)
colorbar
[sd_val, mean_val, entropy_val] = valueForImgsc(nom);
title({['\fontsize{11}sd: ', num2str(sd_val), '\color{red} mean: ', num2str(mean_val), '\color{blue} entropy: ', num2str(entropy_val)]})
