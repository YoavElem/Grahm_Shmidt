function l = Norm(v, inner_product)
% computes ||v|| with respect to the given inner product
%
% INPUT:  
%   v : vector.
%   inner_product : the given inner product function.
% OUTPUT:
%   l = the norm of v.

l = sqrt(inner_product(v, v));

end

