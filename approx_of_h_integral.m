function [ hx ] = approx_of_h_integral( x )
% 1 = p0
% y  = p1
% y^2 - 1/3 = p2
% y^3 - 3/5*y = p3
% y^4 - (6/7)*y^2+ 3/35 = p4
% cos(pi*y) = f
syms y;
h(y) = y^4 - (6/7)*y^2 + 3/35;
g(y) =   cos(pi*y);
hx = h(x)*g(x);
end

