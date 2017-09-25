function [ cn ] = bisection_method( a0,b0, iter )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
a = a0;
b = b0;
c = 0;
while iter > 0 && hw1f(a)*hw1f(b) < 0
    c = (a+b)/2;
    if hw1f(a)*hw1f(c) < 0
        b = c;
    else %hw1f(c)*hw1f(b) < 0
        a = c;
    end
    iter = iter - 1;
end
cn = c;
end

