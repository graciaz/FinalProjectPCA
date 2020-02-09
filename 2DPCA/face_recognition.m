%%% face recognition by Kalyan Sourav Dash %%%
clear all
close all
clc

path = ['angle']; %dataset
TestImage = ['1'] 

%%%%%%%%%%%%%  calling the functions  %%%%%%%%%%%%%%%%%%%%%%%%

escs = [];
scs=[];
for i = 1:10
pc = i; % number of eigenface
px = 0; %% 10k mod

%%%%%%%%%%%% 2DPCA %%%%%%%%%%%%%%%%%%%
[featureTr2 featureTs2 lblTr2 lblTs2 nameTr2 nameTs2, Eivecs, imIn] = eigenfaceExtractByUsing2DPCA(path,40,pc,px);
lblPredict2 = knnclassify(featureTs2', featureTr2', lblTr2, 1);

score2_2DPCA = sum(lblTs2 == lblPredict2)/size(lblTs2,1)*100

escs = [i score2_2DPCA];
scs = [scs; escs];
end
x=[];
y=[];
for u = 1: size(scs)
    x = [x; scs(u, 1)];
    y = [y; scs(u, 2)];
end

ylabel('scores');
xlabel('amount of eigenface');
plot(x, y);