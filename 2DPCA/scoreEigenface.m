function [pxs, range]=scoreEigenface(score, px, eiVecs)

%%%%%%%%% 2DPCA score per px %%%%%%%%%
pxs=[];
%sheetName = ['px', ' test']; %['px=', num2str(px)];
column = ['B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K'];
range = column(px+1);
%num = eiVecs;
for m = 1: eiVecs %1: 5
    pxs = [pxs; score(m,1,px+1)];
end
    
end