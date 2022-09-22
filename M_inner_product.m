function inn = M_inner_product(v, w)

% return the M inner product
% INPUT:
%       v, w : vector in the space.
%
% OUTPUT:
%       inn : the inner product.
%
% when defining M make sure it is a symetric positive squared matrix of the
% dimension of the linear space itself.


 M = [45 3; 3 100];
 inn = v' * M * w;

end

