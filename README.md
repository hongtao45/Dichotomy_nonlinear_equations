   # MATLAB
  使用MATLAB来解决简单非线性的一个根，或者近似解。
  除了 fzero() fslove() solve()函数之外，
	还有其他的几种数值方法，理论依据，f(a)f(b)<0;那么在[a,b]上，至少存在一个根。
  一般都是只求出一个区间内的一个根：
   
	大致分为两类：
		1,夹逼法（二分法，黄金分割法）
    	2,迭代法（其余）
  此方法使用了二分法来找出解非线性方程在至少
  具有一个根的区间内的一个根、
  
  假设：
  z(x)是凸函数，且在区间[a, b]内是连续可微函数。

  原理：
  求其导函数z’(x)在区间 [a, b]内的零点（根）, 即 
  z’(x)=0 with  a≤x≤b

  算法步骤：
