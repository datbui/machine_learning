function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);
[m n] = size(X)
% You need to return the following variables correctly.
idx = zeros(m, 1);

for i = 1:m
  x = X(i, :);
  j = 9999999999;
  idx(i) = 1;
  for k =1:K
    new_j = sum((x - centroids(k, :)).^2)/n;
    if new_j <= j
      j = new_j;
      idx(i) = k;
    endif
  endfor
endfor

% =============================================================

end

