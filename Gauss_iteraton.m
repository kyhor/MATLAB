function [ iguess ] = Gauss_iteraton(A,b,n,iter,iguess)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
fc = 0;
while (iter > 0)
    iter = iter -1;
    for row = 1:n
        sum = 0;
        for col = 1:n
            if (row ~= col) 
                sum = sum + A(row,col)*iguess(col);
                fc = fc + 2; 
            end
            iguess(row) = (b(row) - sum)/A(row,row);
            fc = fc+2;
        end
    end
    iguess
    fc
end
end

