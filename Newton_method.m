function [ pn ] = Newton_method( p0, iter )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

 pn = p0;
 
for i = 1:iter

    pn = pn- (hw2f(pn)/hw2fp(pn));

end


