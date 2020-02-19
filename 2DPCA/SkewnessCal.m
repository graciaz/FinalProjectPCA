function [skew] = SkewnessCal(Y)
    sd =[];
    for i = 1: size(Y, 1)
        for ii = 1: size(Y, 2)
            sd(i, ii) = std(Y(i, ii, :));
        end
    end
    
    mn = mean(Y,3);
    % Calculate Skewness
    skew = [];
    for i = 1: size(Y, 1)
        for ii = 1: size(Y, 2)
            skew(i, ii) = sum((Y(i, ii, :)-(ones(1,1,size(Y, 3))*mn(i, ii))).^3) / ((size(Y, 3) - 1) * sd(i, ii)^3);
        end
    end    
end

