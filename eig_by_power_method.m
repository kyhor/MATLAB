function [eigvect,eigval] = eig_by_power_method(k,n,m,r,c,v)

   for i = 1:n
      eigvect(i,1) = 1;
   end

   for iter = 1:k
       
      [eigvect,theflops] = hw2prob1b(r,c,v,m,n,eigvect);
       
      eigval = 0;
      for i = 1:n
         if (abs(eigvect(i,1)) > abs(eigval))
            eigval = eigvect(i,1); 
         end
      end

      for i = 1:n
         eigvect(i,1) = eigvect(i,1)/eigval;
      end

   end

end
