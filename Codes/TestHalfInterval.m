%ʹ�ö��ַ��������Է�����
clear;
clc;
fun= @(x)x.^3-3*x+1;
% % ���ƺ�����ͼ��
x= -1: 0.01: 1;
y= fun(x);
plot(x, y, x, zeros(1, length(x)), 'r-');
root= HalfInterval(fun, 0, 1);
