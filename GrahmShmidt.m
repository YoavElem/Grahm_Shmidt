function U = GrhamShmidt(B, inner_product)

% takes in a base and an inner product and returns a ortonormal base with
% respect to the given inner product.
%
% INPUT:
%       B : a matrix in which each column is a base vector.
%       inner_product : the given inner product.
%
% OUTPUT:
%       U : a matrix in which each column is an ortogonal base vector.       


N = (size(B));
N = N(2); % N is the dim of the space
u_1 = (1 / Norm(B(: , 1), inner_product)) * B(: , 1); 
U = u_1;

for i = 2:N
    b_i = B(: , i);

    u_i = b_i - Projection(U, b_i, inner_product);
    u_i = (1 / Norm(u_i, inner_product)) * u_i;

    U = [U u_i];
end
end





