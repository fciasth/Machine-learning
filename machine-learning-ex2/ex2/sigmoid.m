function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
%您需要正确返回以下变量
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
%指令：计算每个z值的S形（z可以是矩阵，
%向量或标量）。
g = 1./(ones(size(z))+exp(-z))%‘点除’ 表示 1 除以矩阵(向量)中的每一个元素



% =============================================================

end
