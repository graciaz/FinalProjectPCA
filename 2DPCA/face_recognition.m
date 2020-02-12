%%% face recognition by Kalyan Sourav Dash %%%
clear all
close all
clc

path = ['angle']; %dataset
TestImage = ['1'] 

%%%%%%%%%%%%%  calling the functions  %%%%%%%%%%%%%%%%%%%%%%%%
scorePerEi = [];
for i = 0: 9
    scs=[];
    %%%%%% Size V %%%%%%
    %%% angle = 92 %%%
    %%% emoji = 195 %%%
    %%% illumination = 168 %%%
    
    %%%%% Edit range with Size V (from above)%%%%%
    for j = 1: 168 %1: 5
        pc = j; % number of eigenface
        px = i; %% 10k mod

        %%%%%%%%%%%% 2DPCA %%%%%%%%%%%%%%%%%%%
        [featureTr2 featureTs2 lblTr2 lblTs2 nameTr2 nameTs2, V] = eigenfaceExtractByUsing2DPCA(path,38,pc,px);
        lblPredict2 = knnclassify(featureTs2', featureTr2', lblTr2, 1);

        score2_2DPCA = sum(lblTs2 == lblPredict2)/size(lblTs2,1)*100

        %escs = [j score2_2DPCA];
        scs = [scs; score2_2DPCA];
    end
    scorePerEi = cat(3, scorePerEi, scs);
end

%%%%%%%%%% Multiple plot %%%%%%%%%%
x = 1: size(V,1); %1:5;

%%% Each PX %%%
for k = 1: 10 %1: 3
    y=[];
    for m = 1: size(V,1) %1: 5
        y = [y, scorePerEi(m,1,k)];
    end
    subplot(4,3,k)
    plot(x, y)
    title(['PX = ', num2str(k-1)])
end

%%% Mean PX %%%
meanScore = [];
chkSum = [];
for n = 1: size(V,1) %1: 5
    sumScore = 0;
    for o = 1: 10 %1: 3 
        sumScore = sumScore + scorePerEi(n,1,o);
    end
    chkSum = [chkSum; sumScore];
    meanScore = [meanScore; sumScore/o];
end
%%%%%% If you want only Mean PX plot. Please comment subplot %%%%%%
subplot(4,3,[11,12]) %comment this line if you want only Mean PX plot
plot(x, meanScore)
title('PX = 0-9')
    

