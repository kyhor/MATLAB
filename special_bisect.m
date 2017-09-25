function [ appro ] = special_bisect( a0,b0,iter )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
a = a0;
b = b0;
c = (2*a+b)/4;
while iter > 0 && hw1f(a)*hw1f(b) < 0
    if hw1f(a)*hw1f(c) < 0
        
        
    else
        hw1f(c)*hw1f(b) < 0
    end

    
    
end

end

