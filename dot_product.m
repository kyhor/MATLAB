function [thedot,theflops] = dot_product(x,y,n)

   thedot = 0;
   theflops = 0;
   for i = 1:n
      thedot = thedot+x(i,1)*y(i,1);
      theflops = theflops+2;
   end
end
