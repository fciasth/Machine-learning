function p = predictOneVsAll(all_theta, X)
%PREDICT Predict the label for a trained one-vs-all classifier. The labels 
%are in the range 1..K, where K = size(all_theta, 1). 
%  p = PREDICTONEVSALL(all_theta, X) will return a vector of predictions
%  for each example in the matrix X. Note that X contains the examples in
%  rows. all_theta is a matrix where the i-th row is a trained logistic
%  regression theta vector for the i-th class. You should set p to a vector
%  of values from 1..K (e.g., p = [1; 3; 1; 2] predicts classes 1, 3, 1, 2
%  for 4 examples) 
% ％PREDICT预测经过训练的一对一分类器的标签。 
% 标签的范围是1..K，其中K =大小（all_theta，1）。
%  p = PREDICTONEVSALL（all_theta，X）将返回矩阵X中每个示例的预测向量。
%  请注意，X包含示例inrows。 all_theta是一个矩阵，其中第i行是第i类的训练逻辑回归theta向量。 
%  您应该将p设置为1..K的值向量（例如，对于4个示例，p = [1; 3; 1; 2]预测类别1,3,1,2）
m = size(X, 1);
num_labels = size(all_theta, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters (one-vs-all).
%               You should set p to a vector of predictions (from 1 to
%               num_labels).
%完成以下代码以使用预测
% 你所学习的逻辑回归参数（一对一）。
% ％您应该将p设置为预测向量（从1到num_labels）。
% Hint: This code can be done all vectorized using the max function.
%       In particular, the max function can also return the index of the 
%       max element, for more information see 'help max'. If your examples 
%       are in rows, then, you can use max(A, [], 2) to obtain the max 
%       for each row.
%       
% 这个代码可以使用max函数向量化完成。
%   特别是，max函数也可以返回最大元素的索引，更多信息请参阅'help max'。 
% 如果你的例子在行中，那么你可以使用max（A，[]，2）来获得每行的最大值。

[~,p] = max( X * all_theta',[],2); % 求矩阵(X*all_theta')每行的最大值，p 记录矩阵每行的最大值的索引




% =========================================================================


end
