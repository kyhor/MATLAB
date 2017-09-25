function [x1,k] = jacobi_method_with_2norms(a,b,x0,tol)
flop = 0;
n = length(b);
for j = 1 : n
     x(j) = ((b(j) - a(j,[1:j-1,j+1:n]) * x0([1:j-1,j+1:n])) / a(j,j)); % the first iteration
     flop = flop + 3;
end
x1 = x';
k = 1;
while norm(x1-x0,2) > tol
    for j = 1 : n
     x_ny(j) = ((b(j) - a(j,[1:j-1,j+1:n]) * x1([1:j-1,j+1:n])) / a(j,j));
     flop = flop + 3;
    end
    x0 = x1;
    x1 = x_ny';
    k = k + 1;
end
x = x1';
k
flop
norm(x1-x0,2)
