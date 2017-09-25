function [A] = matrix_generator(r,c,v,m,n)

   for i = 1:n
      for j = 1:n
         A(i,j) = 0;
      end
   end

   for i = 1:m
      A(r(i,1),c(i,1)) = v(i,1);
   end
