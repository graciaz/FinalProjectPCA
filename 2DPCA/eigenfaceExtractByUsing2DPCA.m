function [featureTr featureTs lblTr lblTs nameTr nameTs V]=eigenfaceExtractByUsing2DPCA(datapath,max_class,PCs,PX)
%function [Y m ImgZeroMean]=eigenfaceExtractByUsing2DPCA(max_class,PCs,PX)
%%%%%%%%  finding number of training images in the data path specified as argument  %%%%%%%%%%
% img = {};
% label = [];
% pathImg = {};
% for class_num = 1:max_class
%     D = dir([datapath '/i (' num2str(class_num) ')']);% Dis a Lx1 structure with 4 fields as: name,date,byte,isdir of all L files present in the directory 'datapath'
%     for i=1:1:size(D,1)
%         if not(strcmp(D(i).name,'.')|strcmp(D(i).name,'..')|strcmp(D(i).name,'Thumbs.db'))
%             %imgcount = imgcount + 1; % Number of all images in the training database
%             img = [img; imread([datapath '/i (' num2str(class_num) ')/' D(i).name])];
%             label = cat(1,label,class_num);
%             pathImg = [pathImg ; D(i).name];
%         end
%     end
% end
% 
% %%%% Create the image matrix X
% r = size(img{1,1},1);
% c = size(img{1,1},2);
% X = [];
% 
% for i = 1:size(label,1)
%     tmp = mat2gray(imresize(img{i,1},[r c]));
%     %temp = reshape(tmp',r*c,1);
%     X = cat(3,X,tmp);
% end
% 
% %%%% Divide all image into traing and testing sets
% % xTs = X(:,:,1:2:end);
% % xTr = X(:,:,2:2:end);
% % 
% % lblTs = label(1:2:end);
% % lblTr = label(2:2:end);
% % 
% % nameTr = pathImg(1:2:end,:);
% % nameTs = pathImg(2:2:end,:);
% 
% 
% xTr = [];
% xTs = [];
% lblTr = [];
% lblTs = [];
% nameTr ={};
% nameTs ={};
% 
% %%% Divide all image into traing and testing sets
% %%% 10-fold
% for ix = 1:1:size(X,3)
%     if mod(ix,10) == PX
%        %testing
%        xTs = cat(3,xTs,X(:,:,ix));
%        lblTs = [lblTs; label(ix)];
%        nameTs = [nameTs; pathImg(ix)];
%     else
%        %traing
%        xTr = cat(3,xTr,X(:,:,ix));
%         lblTr = [lblTr; label(ix)];
%         nameTr = [nameTr; pathImg(ix)];
%     end
% end
% 
% %%% Calculate Mean Matrix
% m = mean(xTr,3);
% Y = [];
% 
% %%%% Calculate Data Zero Mean
% ImgZeroMean = xTr - m;
% for j = 1:size(lblTr,1)
%     %%% Calculate Conariance Matrix
%     Y = cat(3,Y,cov(ImgZeroMean(:,:,j)));    
%end
%%%%% for illumination %%%%%
if PX == 0
    load('data0_illumination.mat');
elseif PX == 1
    load('data1_illumination.mat');
elseif PX == 2
    load('data2_illumination.mat');
elseif PX == 3
    load('data3_illumination.mat');
elseif PX == 4
    load('data4_illumination.mat');
elseif PX == 5
    load('data5_illumination.mat');
elseif PX == 6
    load('data6_illumination.mat');
elseif PX == 7
    load('data7_illumination.mat');
elseif PX == 8
    load('data8_illumination.mat');
elseif PX == 9
    load('data9_illumination.mat');
end

%%%%% for angle %%%%%
% if PX == 0
%     load('data0_angle.mat');
% elseif PX == 1
%     load('data1_angle.mat');
% elseif PX == 2
%     load('data2_angle.mat');
% elseif PX == 3
%     load('data3_angle.mat');
% elseif PX == 4
%     load('data4_angle.mat');
% elseif PX == 5
%     load('data5_angle.mat');
% elseif PX == 6
%     load('data6_angle.mat');
% elseif PX == 7
%     load('data7_angle.mat');
% elseif PX == 8
%     load('data8_angle.mat');
% elseif PX == 9
%     load('data9_angle.mat');
% end
% 
%%%%% for emoji %%%%%
% if PX == 0
%     load('data0_emoji.mat');
% elseif PX == 1
%     load('data1_emoji.mat');
% elseif PX == 2
%     load('data2_emoji.mat');
% elseif PX == 3
%     load('data3_emoji.mat');
% elseif PX == 4
%     load('data4_emoji.mat');
% elseif PX == 5
%     load('data5_emoji.mat');
% elseif PX == 6
%     load('data6_emoji.mat');
% elseif PX == 7
%     load('data7_emoji.mat');
% elseif PX == 8
%     load('data8_emoji.mat');
% elseif PX == 9
%     load('data9_emoji.mat');
% end

%load('data0_angle');
ImgZeroMean = xTr - m;
%end

%%% Mean Covarianc Matrix
%L = mean(Y,3);
%L = median(Y,3);
%L = mode(Y,3);

% max 3 dim
% min 3 dim
%end

%%%%% for max and min %%%%%
%  L = zeros(size(Y,1),size(Y,1));
%  for r = 1: size(Y, 1)
%      for t = 1: size(Y, 1)
%          L(r, t) = min(Y(r,t,:));
%      end
%  end

%%%%% For Skewness %%%%%
%[L] = SkewnessCal(Y);

%%%%% For Kurtosis %%%%%
[L] = kurtosisCal(Y);
        

% imgcount = size(Zeromean,2);
% M = ones(imgcount,1)*m';
% M = M';
% ImgZeroMean = xTr - M2;

% Extract Eigen-
[V,D] = eig(L);
% V : eigenvector matrix  D : eigenvalue matrix

[a idx] = sort(diag(D));
idx = idx(end:-1:1);
V = V(:,idx);
D = diag(D);
D = D(idx);
D = D/sum(D);

Eivecs = V;

% select eigenvector
L_eig_vec = V(:,1:PCs);

% create eigenface
featureTr = [];
for k = 1:size(lblTr,1)
    tmpf = (ImgZeroMean(:,:,k)* L_eig_vec);
    featureTr = [featureTr tmpf(:)];
%     featureTr = cat(3,featureTr,(Z(:,:,k)'*ImgZeroMean(:,:,k)));
end


% figure; imshow(featureTr);

% eigenfaces = ImgZeroMean * L_eig_vec;
% featureTr = eigenfaces' * ImgZeroMean;

% extractiing PCA features of the test image
temp = xTs - m;
featureTs = [];
for k = 1:size(lblTs,1)
    tmpf2 = (temp(:,:,k)* L_eig_vec);
    featureTs = [featureTs tmpf2(:)]; % projection of test image onto the facespace
end
