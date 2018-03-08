function [all_theta] = oneVsAll(X, y, num_labels, lambda)
%ONEVSALL trains multiple logistic regression classifiers and returns all
%the classifiers in a matrix all_theta, where the i-th row of all_theta 
%corresponds to the classifier for label i
%   [all_theta] = ONEVSALL(X, y, num_labels, lambda) trains num_labels
%   logistic regression classifiers and returns each of these classifiers
%   in a matrix all_theta, where the i-th row of all_theta corresponds 
%   to the classifier for label i

% Some useful variables
m = size(X, 1);
n = size(X, 2);

% You need to return the following variables correctly 
all_theta = zeros(num_labels, n + 1);

% Add ones to the X data matrix
X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the following code to train num_labels
%               logistic regression classifiers with regularization
%               parameter lambda. 
%
% Hint: theta(:) will return a column vector.
%
% Hint: You can use y == c to obtain a vector of 1's and 0's that tell you
%       whether the ground truth is true/false for this class.
%
% Note: For this assignment, we recommend using fmincg to optimize the cost
%       function. It is okay to use a for-loop (for c = 1:num_labels) to
%       loop over the different classes.
%
%       fmincg works similarly to fminunc, but is more efficient when we
%       are dealing with large number of parameters.
%
% Example Code for fmincg:
%
%     % Set Initial theta
%     initial_theta = zeros(n + 1, 1);
%     
%     % Set options for fminunc
%     options = optimset('GradObj', 'on', 'MaxIter', 50);
% 
%     % Run fmincg to obtain the optimal theta
%     % This function will return theta and the cost 
%     [theta] = ...
%         fmincg (@(t)(lrCostFunction(t, X, (y == c), lambda)), ...
%                 initial_theta, options);
%
% ％指令：您应该完成以下代码来训练num_labels
% 具有正则化的逻辑回归分类器
% ％参数lambda。
% ％
% ％提示：theta（:)将返回一个列向量。
% ％
% ％提示：您可以使用y == c来获取告诉你的向量1和0
% ％这个class的基础真实是真/假。
% ％
% ％注意：对于此作业，我们建议使用fmincg来优化成本
% ％函数。可以使用for循环（对于c = 1：num_labels）来执行
% 循环遍历不同的类。
% ％
% ％fmincg的作用与fminunc相似，但是当我们更有效时
% ％正在处理大量的参数。
% ％
% ％fmincg的示例代码：
% ％
% ％％设定初始θ值
% ％initial_theta =零（n + 1，1）;
% ％
% ％％设置fminunc的选项
% ％options = optimset（'GradObj'，'on'，'MaxIter'，50）;
% ％
% ％％运行fmincg以获得最佳θ值
% ％％此函数将返回theta和成本
% ％θ= ...
% ％fmincg（@（t）（lrCostFunction（t，X，（y == c），lambda））...
% ％initial_theta，options）;


initial_theta = zeros(n + 1, 1);

options = optimset('GradObj','on','MaxIter',50);

for c = 1:num_labels %num_labels 为逻辑回归训练器的个数，num of logistic regression classifiers
all_theta(c, :) = fmincg(@(t)(lrCostFunction(t, X, (y == c),lambda)), initial_theta,options );
end







% =========================================================================


end
