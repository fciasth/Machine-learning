function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
%PLOTDATA将数据点X和y绘制成新图
%PLOTDATA（x，y）用+表示正数示例的数据点
%和o为负面的例子。 假设X是M×2矩阵。
%创建新图
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%
%指示：绘制a的正面和负面的例子
%2D图，使用选项'k +'作为正数
%例子和'ko'为负面例子。
pos = find(y==1);
neg = find(y==0);
plot(X(pos,1),X(pos,2),'k+','LineWidth',2,'MarkerSize',7);
%x中对应y等于1的第一列和第二列
plot(X(neg,1),X(neg,2),'ko','MarkerFaceColor','y','MarkerSize',7);







% =========================================================================



hold off;

end
