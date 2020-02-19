function [kurto] = kurtosisCal(Y)
    sd =[];
    for i = 1: size(Y, 1)
        for ii = 1: size(Y, 2)
            sd(i, ii) = std(Y(i, ii, :));
        end
    end
    
    mn = mean(Y,3);
    % Calculate Kurtosis
    kurto = [];
    for i = 1: size(Y, 1)
        for ii = 1: size(Y, 2)
            kurto(i, ii) = sum((Y(i, ii, :)-(ones(1,1,size(Y, 3))*mn(i, ii))).^4) / ((size(Y, 3) - 1) * sd(i, ii)^4);
        end
    end    
end

