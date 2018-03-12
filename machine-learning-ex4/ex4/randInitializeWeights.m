function W = randInitializeWeights(L_in, L_out)
%RANDINITIALIZEWEIGHTS Randomly initialize the weights of a layer with L_in
%incoming connections and L_out outgoing connections
% RANDINITIALIZEWEIGHTS使用L_in传入连接和L_out传出连接随机初始化图层的权重

%   W = RANDINITIALIZEWEIGHTS(L_in, L_out) randomly initializes the weights 
%   of a layer with L_in incoming connections and L_out outgoing 
%   connections. 
%W = RANDINITIALIZEWEIGHTS（L_in，L_out）随机地使用L_in传入连接和L_out传出连接初始化图层的权重。
%   Note that W should be set to a matrix of size(L_out, 1 + L_in) as
%   the first column of W handles the "bias" terms
%请注意，由于W的第一列处理“bias”项，因此W应设置为大小矩阵（L_out，1 + L_in）

% You need to return the following variables correctly 
W = zeros(L_out, 1 + L_in);

% ====================== YOUR CODE HERE ======================
% Instructions: Initialize W randomly so that we break the symmetry while
%               training the neural network.
%说明：随机初始化W，以便在训练神经网络时打破对称性。
% Note: The first column of W corresponds to the parameters for the bias unit
%注意：W的第一列对应于偏置单元的参数
epsilon_init = 0.12;  
    W = rand(L_out, 1 + L_in) * 2 * epsilon_init-epsilon_init;  







% =========================================================================

end
