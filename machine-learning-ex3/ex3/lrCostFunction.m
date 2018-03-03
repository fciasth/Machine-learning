function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Hint: The computation of the cost function and gradients can be
%       efficiently vectorized. For example, consider the computation
%
%           sigmoid(X * theta)
%
%       Each row of the resulting matrix will contain the value of the
%       prediction for that example. You can make use of this to vectorize
%       the cost function and gradient computations. 
%
% Hint: When computing the gradient of the regularized cost function, 
%       there're many possible vectorized solutions, but one solution
%       looks like:
%           grad = (unregularized gradient for logistic regression)
%           temp = theta; 
%           temp(1) = 0;   % because we don't add anything for j = 0  
%           grad = grad + YOUR_CODE_HERE (using the temp variable)
%
% ％指令：计算特定选项的成本。
% ％您应该将J设置为成本。
% ％计算偏导数并将grad设置为部分
% 成本w.r.t的％衍生物theta中的每个参数
% ％
% ％提示：成本函数和梯度的计算可以是
% ％有效矢量化。例如，考虑计算
% ％
% ％sigmoid（X * theta）
% ％
% ％结果矩阵的每一行都将包含该值
% 该例子的％预测。你可以利用这个矢量化
% 成本函数和梯度计算。
% ％
% ％提示：在计算正则化成本函数的梯度时，
% ％有很多可能的矢量化解决方案，但只有一种解决方案
% ％ 好像：
% ％grad =（逻辑回归的未调节梯度）
% ％temp = theta;
% ％temp（1）= 0; ％，因为我们不会为j = 0添加任何内容
% ％grad = grad + YOUR_CODE_HERE（使用临时变量）

J = (-log(sigmoid(theta'*X'))*y - log(1-sigmoid(theta'*X'))*(1-y))/m + lambda*(theta'*theta)/2*m


grad = (X'*(sigmoid(X*theta)-y))/m + lambda*theta/m




% =============================================================

grad = grad(:);

end
