function [y,theflops] = mat_vect_multiplication(r,c,v,m,n,x)

   theflops = 0;
   for i = 1:n
      y(i,1) = 0;
   end

   for i = 1:m
      y(r(i,1),1) = y(r(i,1),1)+v(i,1)*x(c(i,1),1);
      theflops = theflops+2;
   end
