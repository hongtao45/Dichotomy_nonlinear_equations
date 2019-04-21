function root=HalfInterval(f,a,b,eps)
% 二分法求函数的根，零点
% f:函数名
% a:区间左端点
% b:区间右端点
% eps：求解精度
% root:求解的根
if nargin==3
    eps=1e-4;
end

%subs()替换老变量为新变量
%求解端点出的函数值
f1=subs(sym(f),symvar(sym(f)),a);
f2=subs(sym(f),symvar(sym(f)),b);

if f1==0
    root=a;
end

if f2==0
    root=b;
end

if f1*f2>0
    disp('两端点的函数值乘积大于0！！！');
    return;
else
    root =findRoot(f,a,b,eps);
end

function r=findRoot(f,a,b,eps)
f3=subs(sym(f),symvar(sym(f)),a);
% f4=subs(sym(f),symvar(sym(f)),b);
mf=subs(sym(f),symvar(sym(f)),(a+b)/2); %函数终点值

if f3*mf>0
    t=(a+b)/2;
    r=findRoot(f,t,b,eps); %右迭代
elseif f3*mf==0
    r=(a+b)/2;
elseif abs(a-b)<eps
    r=(b+3*a)/4;
else
    s=(a+b)/2;
    r=findRoot(f,a,s,eps);%左迭代
end
