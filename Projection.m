function p_u = Projection(U, v, inner_product)
% computes the projection of v on the linear space spanned by U
% 
% INPUT:
%   U : a matrix in which each column is a base vector of the linear space.
%   v : the given vector.
%   inner_product : the given inner product.


[m n] = size(U);

delta = zeros(n, 1);

for i = 1: n
    delta(i) = inner_product(v, U(:, i))/inner_product(U(:, i), U(:, i));
end
    p_u = U * delta;
end

