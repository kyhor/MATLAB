function [ cn ] = variant_bisection( a0,b0,iter )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
a = a0;
b = b0;
c = 0;
while iter > 0 && hw1f(a)*hw1f(b) < 0
     c = (2*a+b)/3; 
     cut = (a+3*b)/4;
    if hw1f(cut)*hw1f(b) < 0
       a = cut; 
    else    % hw1f(a)*hw1f(c) < 0 case  
        b = cut;     
    end
    iter = iter - 1;
end
cn = c;
end

