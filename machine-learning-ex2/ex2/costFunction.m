function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

%COSTFUNCTION为逻辑回归计算成本和梯度
%J = COSTFUNCTION（theta，X，y）计算使用theta的成本
%用于逻辑回归的％参数和成本的梯度
%w.r.t. 到参数。

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
%指令：计算特定选项的成本。
%您应该将J设置为成本。
%计算偏导数并将grad设置为部分
%成本w.r.t的％衍生物 theta中的每个参数

%
% Note: grad should have the same dimensions as theta
%
%J = (1./m)*sum(-y*log(sigmoid(theta'*X'))-(1-y)log(1-sigmoid(theta'*X')))
J = (log(sigmoid(theta'*X')) * y + log(1-sigmoid(theta'*x'))*(1-y))/(-m);


grad = (X'*(sigmoid(X*theta)-y))/m;

% =============================================================

end
