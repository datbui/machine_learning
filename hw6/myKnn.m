function y_test_p = myKnn(train, test, ytrain, k)  M = pdist2(train, test);  for i = 1:size(test, 1)    [mv ind] = sort(M(:, i));    nn = ind(1:k);        y_test_p(i) = mode(ytrain(nn));  endforendfunction