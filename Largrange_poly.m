function [ pz ] = Largrange_poly( m,vx,vy,z )
syms x;
p(x) = x-x;
L(x) = x/x;
for i = 1:m
    for j = 1:m
        if (i~=j)
           L(x) = L(x)*(x-vx(j))/(vx(i)-vx(j)); 
        end
    end
    p(x) = p(x) + vy(i)*L(x);
    L(x)=x/x;
end
pz = p(z);
end

