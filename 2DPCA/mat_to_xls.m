%%%%% Export file.mat to file.csv %%%%%
clear all
load('px_emoji.mat');
eiVecs = size(V, 1);
xlsName = 'emoji.xlsx';
sheetName = "emoji";
colHeader = ["PX = 0", "PX = 1", "PX = 2", "PX = 3", "PX = 4", "PX = 5", "PX = 6", "PX = 7", "PX = 8", "PX = 9"];
rowHeader(1:eiVecs,1) = [1: eiVecs];

%%%%% Write data to file.xlsx %%%%%
xlswrite(xlsName, colHeader, sheetName, 'B1'); %write column header
xlswrite(xlsName, rowHeader, sheetName, 'A2'); %write row header

for i = 0: 9 % range px
    %%%%%%%%% Function call data %%%%%%%%%
    [pxs, range]=scoreEigenface(scorePerEi, i, eiVecs)
    
    xlswrite(xlsName, pxs, sheetName, [range, num2str(2)]); %write data
end