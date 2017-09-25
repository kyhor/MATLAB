function jacobi_Method_plot(a,b,x0,x)

n = length(b);
for j = 1 : n
     x(j) = ((b(j) - a(j,[1:j-1,j+1:n]) * x0([1:j-1,j+1:n])) / a(j,j)); % the first iteration
end
x1 = x;
k = 1;
hold on
for it = 1:4
    for j = 1 : n
     x_ny(j) = ((b(j) - a(j,[1:j-1,j+1:n]) * x1([1:j-1,j+1:n])) / a(j,j));
    end
    x0 = x1;
    x1 = x_ny';
    k = k + 1;
    e = x1 - x
    plot(e)
end
hold off