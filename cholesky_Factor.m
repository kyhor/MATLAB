function cholesky_Factor(v,u,n)
fc = 0;
sq = 0;
for (i = 1:n)
    for(j = 1:n)
        R(i,j) = 0;
    end
end

sum = 0;
for i = 1:n
    for j = 1:n
        if (i == j)
            for k = 1:i-1
               sum = sum + (R(k,i))^2;
               fc = fc +2;
            end
            R(i,j) = sqrt(v(i)-sum);
            sq = sq + 1;
            fc = fc + 1;
            D(i) = R(i,j);
            sum =0;
        elseif (i+1 == j)
            for k = 1:i-1
               sum = sum + R(k,i)*R(k,j);
               fc = fc +2;
            end
            R(i,j) = (u(i)-sum)/R(i,i);
            fc = fc + 2; 
            UD(i) = R(i,j);
            sum = 0;          
        end
    end
end
D'
UD'
fc
sq
end
