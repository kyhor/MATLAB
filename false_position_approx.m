function [ pn ] = false_position_approx( a,b,iter )
p0 = a;
p1 = b;
count = 0;
while count < iter 
    pn = p1 - (hw3f(p1)*(p1-p0))/(hw3f(p1)-hw3f(p0));
    if (hw3f(p0)*hw3f(pn) < 0)
        p1 = pn;
    elseif (hw3f(pn)*hw3f(p1) < 0)
        p0 = pn;
    else
        pn = 0;
    end
    count = count +1;
end
end

