function [ y ] = back_substitution( n,G,b )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
fpc = 0;
y(n) = b(n)/G(n,n);
fpc = fpc+2;
remain = n-1;
solved = 1;
while (remain > 0)
    sum = 0;
    for col = (0:1:solved-1)
        sum = sum + y(n-col)*G(remain,n-col);
        fpc = fpc +2;
        y(remain) = (b(remain)-sum)/G(remain, remain);
        fpc = fpc+2;
    end
    remain = remain - 1;
    solved = solved +1;
end

display(fpc);
    
end

