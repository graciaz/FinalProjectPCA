clear all

%%%%% export data to file.mat %%%%%
path = ['illumination']; %dataset

%%%%%%%%%%%%%  calling the functions  %%%%%%%%%%%%%%%%%%%%%%%%
px = 0; %% 10k mod
[lblTr lblTs nameTr nameTs Y xTr xTs m]=prepareData(path,38,px)