function [ sum ] = best_approx_of_Legendre_poly(N,a,b)
h = (b-a)/N;
sum = 0;
if mod(N,2) == 0
    for i = (1:N+1)
        if (i-1 == 0 || i-1 == N)
            c = h/3;
        elseif (mod(i-1,2) == 0)
            c = 2*h/3;
        else
            c = 4*h/3;
        end
        xi = a+ (i-1)*h;
        sum = sum + c*hw8h(xi);
    end
end
end

