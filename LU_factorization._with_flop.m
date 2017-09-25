function LU_factorization_with_flop( n,u,d,l )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
for i = 1:n 
    A(i,i) = d(i);
end
for j = 1:n-1 
    A(j,j+1) = u(j);
    A(j+1,j) = l(j);
end
flop = 0;
L = ones(n,1);
    for row = 1:n-1
        if  A(row+1,row) ~= 0
            for col = 1:n
                A(row,col) = (A(row+1,row))*(A(rowA,col)/A(row,row));
                flop = flop + 2;
            end
            for col = 1:n
                A(row+1,col) = A(row,col) - A(row+1,col);
                flop = flop + 1;
            end
        end
    end
for dia = 1:n
    u1(dia) = A(dia,dia);
end

for up = 1:n-1
    u2(up) = A(up,up+1);
end
L
u1
u2
flop
end

