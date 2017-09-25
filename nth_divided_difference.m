function [ ndd ] = nth_divided_difference( n,vx,vy)

if (n == 0)
    ndd = vy(1);
    
elseif (n == 1)
    ndd = (vy(2)-vy(1))/(vx(2)-vx(1));
else
  
    frontvx = vx(2:n+1);
    frontvy = vy(2:n+1);
   
    backvx = vx(1:n);
    backvy = vy(1:n);
    
    ndd = (hw5p8(n-1,frontvx,frontvy)-hw5p8(n-1, backvx,backvy))/(vx(n+1)-vx(1));

end

end

