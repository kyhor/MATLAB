function [ s ] = solve_by_QR_factorization( Q,R,b,n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
QT(:,:)=0;
for row = 1:n
    for col = 1:n
        QT(row,col) = Q(col,row);
    end
end

c = zeros(n,1);
for row = 1:n
    sum = 0;
    for col = 1:n
        sum = sum + QT(row,col)*b(col);
    end
    c(row) = sum;
end

x= zeros(n,1);
for row = n:-1:1
    sum = 0;
    for col = n:-1:(row+1)
        sum = sum + R(row,col)*x(col);
    end
    x(row) = (c(row)-sum)/R(row,row);
end
x
end

