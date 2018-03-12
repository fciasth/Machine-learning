function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%NNCOSTFUNCTION为两层实现神经网络成本函数
%执行分类的神经网络
%[J grad] = NNCOSTFUNCTON（nn_params，hidden_layer_size，num_labels，X，y，lambda）计算神经网络的成本和梯度。 神经网络的参数“展开”到矢量nn_params中，需要转换回权矩阵。

%返回的参数grad应该是神经网络偏导数的“展开”向量。

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
%将nn_params重塑成参数Theta1和Theta2，我们的2层神经网络的权重矩阵
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);
         
% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));% Theta1_grad is a 25*401 matrix
Theta2_grad = zeros(size(Theta2));% Theta2_grad is a 10*26 matrix
% 当每一层的残差计算好之后，就可以更新 Δ(delta) 矩阵了，Δ(delta) 矩阵与 参数矩阵有相同的维数，初始时Δ(delta) 矩阵中的元素全为0.


% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m
%第1部分：前馈神经网络，并返回变量J的成本。实现第1部分后，可以通过验证ex4.m中计算的成本来验证您的成本函数计算是否正确
a1 = [one(m,1) X];
z2 = a1 * Theta1';
a2 = sigmoid(z2);
a2 = [one(m,1) a2];
z3 = a2 * Theta2';
h = sigmoid(z3);

for i = 1:m
	yk(i,y(i)) = 1;
end
J = (1/m)*sum(sum(((-yk).*log(h) - ( 1- yk).*log(1-h)))

Theta1_new=Theta1(:,2:size(Theta1,2));  
Theta2_new=Theta2(:,2:size(Theta2,2));  
J=J+lambda/2/m*(Theta1_new(:)'*Theta1_new(:)+Theta2_new(:)'*Theta2_new(:));  



% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients










%第2部分：实现反向传播算法来计算梯度Theta1_grad和Theta2_grad。 
%您应该分别返回关于Theta1_grad和Theta2_grad中的Theta1和Theta2的成本函数的偏导数。
% 在实现第2部分之后，您可以通过运行checkNNGradients来检查您的实现是否正确
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%注意：传递给函数的向量y是一个包含1..K的值的标签向量。 
%您需要将此矢量映射为1和0的二进制向量，以用于神经网络成本函数。
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.
%提示：如果您是第一次实施反向传播，我们建议在训练示例中使用for-loop实施反向传播。
% Part 3: Implement regularization with the cost function and gradients.
%第3部分：用成本函数和梯度实现正则化。
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%提示：您可以在反向传播的代码周围实现此功能。
% 也就是说，您可以分别计算正则化的梯度，然后将它们添加到Part 2的Theta1_grad和Theta2_grad中。



















% -------------------------------------------------------------

% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
