function [ maxerr ] = abs_err_of_piecewise_linear_inter_poly( n )

syms x;
maxerr = -1;
for k = 1:n+1
    vx(k) = (2*(k-1))/n;
    vy(k) = sin(vx(k));
end

for k = 1:n
    s(k) = (vy(k+1)-vy(k))/(vx(k+1)-vx(k));
    h(x) = sin(x) - s(k)*(x - vx(k)) - vy(k);
    err = abs(h(acos(s(k))));
    if maxerr < err
        maxerr = err;
    end
end

maxerr = double (maxerr);

end
