clear all

%%%%% export data to file.mat %%%%%
path = ['emoji']; %dataset

%%%%%%%%%%%%%  calling the functions  %%%%%%%%%%%%%%%%%%%%%%%%
px = 9; %% 10k mod
[lblTr lblTs nameTr nameTs Y xTr xTs m]=prepareData(path,38,px)