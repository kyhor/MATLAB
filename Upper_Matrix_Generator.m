function [ a ] = Upper_Matrix_Generator( n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    for i= 1:n
        
        for j = 1:n
            
            if(i>j)
                a(i,j)= 0;
            else 
                a(i,j) = j+i;
            end
        end
       
    end
end

