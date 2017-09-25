function [vec,value] = k_iter_power_method(A,n,k)
%
%Power method for computing eigenvalues
%
dd=1;
x=ones(n);
nn=10;
while k>0
y=A*x;
dd=abs(norm(x)-nn);
nn=norm(x);
x=y/nn;
k = k-1;
end
vec=x
value=nn

