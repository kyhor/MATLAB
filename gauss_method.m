function gauss_method(A,x,b,x0)
D = diag(diag(A));
L = tril(A)- D;
U = triu(A)- D;
X( : ,1) = x0;
hold on
for i = (1:4)
    X ( : ,i+ 1 ) = -inv(D+L)*(U)*X( : ,i) + inv(D+L)*b;% Gauss-Seidel formula
    err = X( :,i+1) - x;% finding error
    plot(err)
end
hold off

end
