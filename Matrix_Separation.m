function [ M, N, b ] = Matrix_Separation(A, b, w, flag)
%
% [ M, N, b ] = matsep(A, b, w, flag)
%
% MATSEP Matrix Separation
%   Input matrix is splitted into several others in diferent ways depending
%   on the method to be used: Jacobi and SOR (Gauss-Seidel when w = 1)
%
% Input:
%   A - input matrix
%   x - inicial vector
%   b - vector b
%   flag - 1 = Jacobi / 2 = SOR
%
% Output:
%   M - matrix M
%   N - matrix N
%   b - vector b (modified for SOR)
%


    if nargin ~= 4
        error('matsep: invalid input parameters');
    end
    
    [ m, n ] = size(A);
    if m ~= n
        error('matsep: input matrix A must have dimension nXn');
    end
    
    [ l, o ] = size(b);
    if l ~= n && o ~= 1
        error('matsep: input matrix b must have dimension nX1');
    end

    if (flag == 1) % separation for Jacobi
        M = diag(diag(A));
        N = diag(diag(A)) - A;
    elseif (flag == 2) % separation for SOR/Gauss-Seidel
        b = w * b;
        M =  w * tril(A, -1) + diag(diag(A));
        N = -w * triu(A,  1) + (1.0 - w) * diag(diag(A));
    end

end