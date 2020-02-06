%%% face recognition by Kalyan Sourav Dash %%%
clear all
close all
clc

path = ['angle']; %dataset
TestImage = ['1'] 

%%%%%%%%%%%%%  calling the functions  %%%%%%%%%%%%%%%%%%%%%%%%
pc = 1; % number of eigenface
px = 0; %% 10k mod

%%%%%%%%%%%% 2DPCA %%%%%%%%%%%%%%%%%%%
[featureTr2 featureTs2 lblTr2 lblTs2 nameTr2 nameTs2] = eigenfaceExtractByUsing2DPCA(path,40,pc,px);
lblPredict2 = knnclassify(featureTs2', featureTr2', lblTr2, 1);

score2_2DPCA = sum(lblTs2 == lblPredict2)/size(lblTs2,1)*100
