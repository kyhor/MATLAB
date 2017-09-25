function jacobi_method_N_step(a,b,x0,step)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
flop = 0;
n = length(b);
for j = 1 : n
     x(j) = ((b(j) - a(j,[1:j-1,j+1:n]) * x0([1:j-1,j+1:n])) / a(j,j)); % the first iteration
     flop = flop + 3;
end
x1 = x';

while step > 0
    for j = 1 : n
        x_ny(j) = ((b(j) - a(j,[1:j-1,j+1:n]) * x1([1:j-1,j+1:n])) / a(j,j));
        flop = flop + 3;
    end
    x0 = x1;
    x1 = x_ny';
    step = step-1;
end

x = x1'

flop
end

