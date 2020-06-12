function vec = triu2vec(matrix)
% Cnnvert the upper triangular part of a square matrix intoa vector
% Author: Xin Di PhD.
% June 12, 2020

[m,n] = size(matrix);

if m~=n
    error('Not a square matrix');
end

matrix_mask = triu(ones(m,m),1);
a_mask = matrix_mask(:);

a_matrix = matrix(:);
vec = a_matrix(a_mask==1);
