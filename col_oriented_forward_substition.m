function [x,theflops] = col_oriented_forward_substition(r,c,v,m,n,b)

   thestart = 1;
   for i = 1:m
      if c(i,1) == r(i,1)
         thediag = i;
         x(r(thediag,1),1) = b(r(thediag,1),1)/v(thediag,1);
         theflops = theflops+1;
      end
      if i+1 > m | c(i+1,1) ~= c(i,1)
         theend = i;
         for j = thestart:theend
            if j ~= thediag
               b(r(j,1),1) = b(r(j,1),1)-x(r(thediag,1),1)*v(j,1);
               theflops = theflops+2;
            end
         end
         thestart = theend+1;
      end
   end
