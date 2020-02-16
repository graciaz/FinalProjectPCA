clear all

%%%%% export data to file.mat %%%%%
path = ['angle']; %dataset

%%%%%%%%%%%%%  calling the functions  %%%%%%%%%%%%%%%%%%%%%%%%
px = 1; %% 10k mod
[lblTr lblTs nameTr nameTs Y xTr xTs m]=prepareData(path,38,px)