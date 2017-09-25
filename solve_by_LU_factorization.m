function  x = solve_by_LU_factorization(n,vp,B,vb)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
ID = eye(n);
%initialize 
x = ones(n:1);
for i = (1:n)
    for j = (1:n)
        if (i <= j)
            P(i,j) = ID(vp(i),j);
            U(i,j) = B(i,j);
            if( i==j)
                L(i,j) = 1;
            end
        else
            P(i,j) = ID(vp(i),j);
            L(i,j) = B(i,j);
            U(i,j) = 0;
        end
    end
end
%solving
%get p*b = bprime
for i = (1:n)
    sum = 0;
    for j = (1:n)
        sum = sum + P(i,j)*vb(j);
    end
    bp(i) = sum;
end
%getting y
for i = (1:n)
    sum = 0;
    for j = (1:i-1)
        sum = sum + L(i,j)*y(j); 
    end
    y(i) = (bp(i)-sum)/L(i,i);
end
%getting x
for i = n:-1:1
    sum = 0;
    for j = (i+1:n)
        sum = sum+U(i,j)*x(j);
    end
    x(i) =  (y(i)-sum)/U(i,i);
end
end

