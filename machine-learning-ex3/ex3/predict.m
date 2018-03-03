function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)
% ％PREDICT预测给定经过训练的神经网络的输入的标签
% ％p = PREDICT（Theta1，Theta2，X）输出给定的X的预测标签
% 训练的神经网络权重（Theta1，Theta2）
% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%说明：完成以下代码，使用您学习的神经网络进行预测。 
% 您应该将p设置为包含介于1到num_labels之间的标签的向量。
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%最大功能可能会有用。 
% 特别是，max函数也可以返回最大元素的索引，
% 更多信息请参阅'help max'。 
% 如果你的例子在行中，那么你可以使用
% max(x,[],dim)max（A，[]，2）来获得每行的最大值。dim表示维数。如果x是一个矩阵的话，dim取1表示找这个矩阵中各列的最大值，dim取2表示找这个矩阵中各行的最大值。

% 模拟实现前向传播算法
X = [ones(m, 1) X];
a_super_2 = sigmoid(Theta1 * X');
a_super_2 = [ones(1,m); a_super_2];% add bias unit
a_super_3 = sigmoid(Theta2 * a_super_2);
%==================================
[~,p] = max( a_super_3' ,[], 2 ); % 对样本的结果进行预测，与逻辑回归的预测类似，选取输出的最大值 作为最终的预测结果
% =========================================================================


end
