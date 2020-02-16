function [lblTr lblTs nameTr nameTs Y xTr xTs m]=prepareData(datapath,max_class,PX)

%%%%%%%%%  finding number of training images in the data path specified as argument  %%%%%%%%%%
img = {};
label = [];
pathImg = {};
for class_num = 1:max_class
    D = dir([datapath '/i (' num2str(class_num) ')']);% Dis a Lx1 structure with 4 fields as: name,date,byte,isdir of all L files present in the directory 'datapath'
    for i=1:1:size(D,1)
        if not(strcmp(D(i).name,'.')|strcmp(D(i).name,'..')|strcmp(D(i).name,'Thumbs.db'))
            %imgcount = imgcount + 1; % Number of all images in the training database
            img = [img; imread([datapath '/i (' num2str(class_num) ')/' D(i).name])];
            label = cat(1,label,class_num);
            pathImg = [pathImg ; D(i).name];
        end
    end
end

imIn = img;

%%%% Create the image matrix X
r = size(img{1,1},1);
c = size(img{1,1},2);
X = [];

for i = 1:size(label,1)
    tmp = mat2gray(imresize(img{i,1},[r c]));
    %temp = reshape(tmp',r*c,1);
    X = cat(3,X,tmp);
end

%%%% Divide all image into traing and testing sets
% xTs = X(:,:,1:2:end);
% xTr = X(:,:,2:2:end);
% 
% lblTs = label(1:2:end);
% lblTr = label(2:2:end);
% 
% nameTr = pathImg(1:2:end,:);
% nameTs = pathImg(2:2:end,:);


xTr = [];
xTs = [];
lblTr = [];
lblTs = [];
nameTr ={};
nameTs ={};

%%% Divide all image into traing and testing sets
%%% 10-fold
for ix = 1:1:size(X,3)
    if mod(ix,10) == PX
       %testing
       xTs = cat(3,xTs,X(:,:,ix));
       lblTs = [lblTs; label(ix)];
       nameTs = [nameTs; pathImg(ix)];
    else
       %traing
       xTr = cat(3,xTr,X(:,:,ix));
        lblTr = [lblTr; label(ix)];
        nameTr = [nameTr; pathImg(ix)];
    end
end

%%% Calculate Mean Matrix
m = mean(xTr,3);
Y = [];

%%%% Calculate Data Zero Mean
ImgZeroMean = xTr - m;
for j = 1:size(lblTr,1)
    %%% Calculate Conariance Matrix
    Y = cat(3,Y,cov(ImgZeroMean(:,:,j)));
    
end
