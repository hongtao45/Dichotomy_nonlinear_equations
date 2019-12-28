%使用二分法求解非线性方程组
clear;
clc;
fun=@(x)x^3-3*x+1;
root=HalfInterval(fun,0,1);
