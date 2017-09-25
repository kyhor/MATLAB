function [ L,U ] = LUFactorization( A,n )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
L = eye(n);
for iter = 1:n-1
    for row = (iter +1) :n
        m = A(row,iter)/A(iter,iter);
        L(row,iter) = m;
        for col = iter:n
            A(row,col) = A(row,col) - m*A(iter,col);    
        end
            
    end
end
U(:,:) = A(:,:);
L
U
end

