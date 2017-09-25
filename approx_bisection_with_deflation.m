function [ cn ] = approx_bisection_with_deflation(a,b,toler)

syms x
f(x) = x^5 + 3*(x^4) - 8*(x^3) -12*(x^2) + 16*x;
if (f(a)*f(b) <0)
    root = 0;
    while (root <= 5)
        cn = (a+b)/2;
        bn = b;
        an = a;
        i = 0;
        while ((b-a)/(2^(i+1)) > toler)
            if (f(cn)*f(bn) <0)
                an = cn;
            else
                bn = cn;
            end
            cn = (an+bn)/2;
            i = i+1;
        end
        cn
        ft(x) = (x - cn);
        f(x) = f(x)/ft(x);
        root = root +1;   
    end
else 
    cn = 99999999;
end
end



