function root=HalfInterval(f,a,b,eps)
% ���ַ������ĸ������
% f:������
% a:������˵�
% b:�����Ҷ˵�
% eps����⾫��
% root:���ĸ�
if nargin==3
    eps=1e-4;
end

%subs()�滻�ϱ���Ϊ�±���
%���˵���ĺ���ֵ
f1=subs(sym(f),symvar(sym(f)),a);
f2=subs(sym(f),symvar(sym(f)),b);

if f1==0
    root=a;
end

if f2==0
    root=b;
end

if f1*f2>0
    disp('���˵�ĺ���ֵ�˻�����0������');
    return;
else
    root =findRoot(f,a,b,eps);
end

function r=findRoot(f,a,b,eps)
f3=subs(sym(f),symvar(sym(f)),a);
% f4=subs(sym(f),symvar(sym(f)),b);
mf=subs(sym(f),symvar(sym(f)),(a+b)/2); %�����յ�ֵ

if f3*mf>0
    t=(a+b)/2;
    r=findRoot(f,t,b,eps); %�ҵ���
elseif f3*mf==0
    r=(a+b)/2;
elseif abs(a-b)<eps
    r=(b+3*a)/4;
else
    s=(a+b)/2;
    r=findRoot(f,a,s,eps);%�����
end
