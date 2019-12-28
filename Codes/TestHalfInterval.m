%使用二分法求解非线性方程组
clear;
clc;
fun= @(x)x.^3-3*x+1;
% % 绘制函数的图像：
x= -1: 0.01: 1;
y= fun(x);
plot(x, y, x, zeros(1, length(x)), 'r-');
root= HalfInterval(fun, 0, 1);
