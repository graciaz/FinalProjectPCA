function [pxs, range]=scoreEigenface(score, px, eiVecs)

%%%%%%%%% 2DPCA score per px %%%%%%%%%
pxs=[];

% %%%%% PX is header %%%%%
% column = ['B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K'];
% range = column(px+1);

%%%%% Eigenvector is header %%%%%
pos = ['B', num2str(px+2)];
range = pos;

%num = eiVecs;
for m = 1: eiVecs %1: 5
    % If PX is header, use score(m,1,px+1), pxs = [pxs; score(m,1,px+1)];
    % If Eigenvector is header, use score(1,m,px+1), pxs = [pxs, score(1,m,px+1)];
    pxs = [pxs, score(1,m,px+1)];
end
    
end