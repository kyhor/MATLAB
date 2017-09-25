function out=Berlekamp_algorithm()

% This programs run the Berlekamp algorithm to find the inverse of B under
% modulo A. The input consists of two integers A and B (A > B).
A=12; B =11;

%Initialization steps
r(1)=A; r(2)=B;
n=2; data=[];
p(1)=0; p(2)=1;
q(1)=1; q(2)=0;
a(1)=0; a(2)=0;


while (r(n)~=0)
    n=n+1;
    a(n)=floor(r(n-2)/r(n-1));
    r(n)=r(n-2)-r(n-1)*a(n);
    p(n)=a(n)*p(n-1)+p(n-2);  
    q(n)=a(n)*q(n-1)+q(n-2);
    data = [data; n-3 r(n) a(n) p(n) q(n)];
end;

if (r(n-1) ~=1)
    fprintf ('The inputs are not co-prime, there is no inverse.\n');
    return;
else
    fprintf('\t\t   k\t\t   r \t\t   a \t\t   p \t\t   q\n');
    fprintf('\t\t------\t\t------\t\t------\t\t------\t\t------\n');
    disp(data);
    out = mod((-1)^(n-3)*p(n-1) , A);
end
end

