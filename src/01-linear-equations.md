# 线性方程组

- [线性方程组](#线性方程组)
  - [线性方程组](#线性方程组-1)
    - [线性方程组的基本概念](#线性方程组的基本概念)
    - [线性方程组的矩阵表示](#线性方程组的矩阵表示)
    - [解线性方程组](#解线性方程组)
    - [线性方程组的两个基本问题](#线性方程组的两个基本问题)
  - [行化简与阶梯形矩阵](#行化简与阶梯形矩阵)
    - [阶梯形矩阵的基本概念](#阶梯形矩阵的基本概念)
    - [行化简算法](#行化简算法)
    - [线性方程组的解](#线性方程组的解)
    - [解的存在性与唯一性](#解的存在性与唯一性)
  - [向量方程](#向量方程)
    - [向量的概念和运算](#向量的概念和运算)
    - [线性组合](#线性组合)
  - [矩阵方程](#矩阵方程)
    - [矩阵-向量积 $\\mathbf{A} \\mathbf{x}$](#矩阵-向量积-mathbfa-mathbfx)
    - [矩阵方程 $\\mathbf{A} \\mathbf{x} = \\mathbf{b}$](#矩阵方程-mathbfa-mathbfx--mathbfb)
  - [线性方程组的解集](#线性方程组的解集)
  - [线性无关](#线性无关)
  - [线性变换](#线性变换)
  - [线性变换的矩阵](#线性变换的矩阵)


## 线性方程组

### 线性方程组的基本概念

*线性方程*

线性方程是形如

$a_1 x_1 + a_2 x_2 + \dots + a_n x_n = b$

的方程，其中 $b$ 与系数 $a_1, a_2, \dots, a_n$ 是已知的实数或复数。

*线性方程组*

线性方程组是一组包含相同变量的线性方程，由一个或多个线性方程组成。

*线性方程组的解*

线性方程组的解是一组数 $s_1, s_2, \dots, s_n$ ，用这组数分别代替变量 $x_1, x_2, \dots, x_n$ 时方程组的所有方程都成立。

*线性方程组的解集*

线性方程组的所有可能的解的集合称为线性方程组的解集。

*线性方程组的等价关系*

若两个线性方程组的解集相同，则称这两个方程组等价。

*线性方程组的解的情况*

线性方程组的解有以下三种情况：

1. 无解
2. 有唯一解
3. 有无穷多解

若一个线性方程组有解，则称其是*相容*的，否则则称其*不相容*。

### 线性方程组的矩阵表示

把方程组每一个变量的系数写在对齐的一列中，得到一个*系数矩阵*。例如，方程组

$\begin{cases}
x_1 - 2 x_2 + x_3 = 0 \\
2 x_2 - 8 x_3 = 8 \\
5 x_1 - 5 x_3 = 10
\end{cases}$

的系数矩阵是

$\begin{bmatrix*}[r]
1 & -2 & 1 \\
0 & 2 & -8 \\
5 & 0 & -5
\end{bmatrix*}$

把方程组等号右边的常数形成的一列加到系数矩阵右边，得到一个*增广矩阵*，（接上例）如

$\begin{bmatrix*}[r]
1 & -2 & 1 & 0 \\
0 & 2 & -8 & 8 \\
5 & 0 & -5 & 10
\end{bmatrix*}$

### 解线性方程组

解线性方程组的基本思路是把方程组用一个更容易解的等价方程组代替。这可以通过方程组的增广矩阵的一系列初等行变换来实现。

*初等行变换*有以下三种

1. 倍加 把某一行换成它与另一行的倍数的和
2. 倍乘 把某一行乘以一个非零的数
3. 对换 把某一行与另一行交换

初等行变换是*可逆*的。

*矩阵的行等价关系*

若一个矩阵经过一系列初等变换可以变成另一个矩阵，则称这两个矩阵行等价。

### 线性方程组的两个基本问题

即存在性与唯一性的问题：

1. 方程组是否相容，即是否有解
2. 若有解，解是否唯一

## 行化简与阶梯形矩阵

### 阶梯形矩阵的基本概念

*先导元素*

矩阵中一行的先导元素是这一行中最左边的非零元素。

*阶梯型*

一个矩阵称为阶梯型，若他具有以下性质：

1. 非零行都在零行之上
2. （除第一行外）每一行的先导元素所在的列都在上一行先导元素所在列的右边

*简化阶梯形*

若一个阶梯型矩阵满足以下性质，则称之为简化阶梯形：

1. 每一非零行的先导元素是 1
2. 每一先导元素是该元素所在列的唯一非零元素

*定理 1*

每个矩阵行等价于唯一的简化阶梯形矩阵。

*主元位置*

一个矩阵的主元位置是该矩阵对应的简化阶梯型中先导元素 1 （即主元）的位置。主元列是含有主元的列。

### 行化简算法

（略）

### 线性方程组的解

*基本变量与自由变量*

用行化简算法把方程组的增广矩阵化为简化阶梯型，对应于主元列的变量称为基本变量，其他变量称为自由变量。

*解集的参数表示*

若方程组有自由变量，可以用它作为参数得到解集的参数表示。例如，对某个简化后的增广矩阵

$\begin{bmatrix*}[r]
1 & 0  & -5 & 1 \\
0 & 1 & 1 & 4 \\
0 & 0 & 0 & 0
\end{bmatrix*}$

解集的参数表示为

$\begin{cases}
x_1 = 5 x_3 + 1 \\
x_2 = -x_3 + 4\\
x_3 \; \text{是自由变量}
\end{cases}$

### 解的存在性与唯一性

*定理 2*

线性方程组相容的充要条件是增广矩阵的最右列不是主元列，即，增广矩阵的阶梯型没有形如

$[0 \dots 0 \; b], \quad b \ne 0$

的行。

若方程组相容，则

1. 当没有自由变量时，有唯一解
2. 当存在自由变量时，有无穷多解

## 向量方程

线性方程组的重要性质都可以用向量的概念和符号来描述。

### 向量的概念和运算

*向量*

仅含一列的矩阵称为向量。

*有序数组*

向量可以表示一组有序数，如

$\mathbf{u} = \begin{bmatrix*}
u_1 \\
u_2 \\
\vdots \\
u_n
\end{bmatrix*}$

（$\mathbf{u}$ 也称为一个 $n$ 维向量）

*$\mathbb{R}^n$*

$\mathbb{R}^n$ 表示所有 $n$ 元有序数组（ $n$ 维向量）的集合，其中 $n$ 是正整数。

*向量的相等关系*

$\mathbb{R}^n$ 中两个向量相等当且仅当它们对应位置的元素相等。

*向量的运算*

（略）

### 线性组合

*线性组合*

设 $\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p$ 是 $\mathbb{R}^n$ 中的向量， $c_1, c_2, \dots, c_p$ 是标量，则向量

$\mathbf{y} = c_1 \mathbf{v}_1 + c_2 \mathbf{v}_2 + \dots + c_p \mathbf{v}_p$

称为向量 $\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p$ 以 $c_1, c_2, \dots, c_p$ 为*权*的线性组合。

*线性组合与线性方程组的关系*

*向量方程*

$x_1 \mathbf{a}_1 + x_2 \mathbf{a}_2 + \dots + x_n \mathbf{v}_n = \mathbf{b}$

和增广矩阵为

$\begin{bmatrix*}
\mathbf{a}_1 & \mathbf{a}_2 & \dots & \mathbf{a}_n & \mathbf{b}
\end{bmatrix*}$

的线性方程组有相同的解集。因此，向量 $\mathbf{b}$ 可以表示为 $\mathbf{a}_1 \; \mathbf{a}_2 \; \dots \; \mathbf{a}_n$ 的线性组合当且仅当对应的线性方程组有解。

*向量生成的集合*

设 $\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p$ 是 $\mathbb{R}^n$ 中的向量，则它们的所有线性组合所形成的集合表示为 $\mathrm{Span} \{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p \}$ ，称为由 $\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p$ 生成的 $\mathbb{R}^n$ 的子集。

线性代数的一个主要思想是研究可以表示为某一固定向量集合 $\{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p \}$ 的线性组合的所有向量，即 $\mathrm{Span} \{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p \}$

*$\mathrm{Span} \{\mathbf{v} \}$ 与 $\mathrm{Span} \{\mathbf{u}, \mathbf{v} \}$ 的几何意义*

若 $\mathbf{u}, \mathbf{v} \in \mathbb{R}^3$ ，则

* $\mathrm{Span} \{\mathbf{v} \}$ 是空间中的点或直线
* $\mathrm{Span} \{\mathbf{u}, \mathbf{v} \}$ 是空间中的点、直线或平面

## 矩阵方程

### 矩阵-向量积 $\mathbf{A} \mathbf{x}$

*定义*

若 $\mathbf{A}$ 是 $m \times n$ 矩阵，其各列为 $\mathbf{a}_1, \dots, \mathbf{a}_n$ ， $\mathbf{x} \in \mathbb{R}^n$ ，则 $\mathbf{A}$ 与 $\mathbf{x}$ 的积 $\mathbf{A} \mathbf{x}$ 就是 $\mathbf{A}$ 的各列以 $\mathbf{x}$ 中对应元素为权的线性组合，即

$\mathbf{A} \mathbf{x} =
\begin{bmatrix*}
\mathbf{a}_1 & \mathbf{a}_2 & \dots & \mathbf{a}_n
\end{bmatrix*}
\begin{bmatrix*}
x_1 \\
x_2 \\
\vdots \\
x_n
\end{bmatrix*} =
x_1 \mathbf{a}_1 + x_2 \mathbf{a}_2 + \dots + x_n \mathbf{a}_n
$

*性质*

若 $\mathbf{A}$ 是 $m \times n$ 矩阵， $\mathbf{u}, \mathbf{v} \in \mathbb{R}^n$ ， $c$ 是标量，则

* $\mathbf{A} (\mathbf{u} + \mathbf{v}) = \mathbf{A} \mathbf{u} + \mathbf{A} \mathbf{v}$
* $\mathbf{A} (c \mathbf{u}) = c (\mathbf{A} \mathbf{u})$

### 矩阵方程 $\mathbf{A} \mathbf{x} = \mathbf{b}$

*定理3*

若 $\mathbf{A}$ 是 $m \times n$ 矩阵，其各列为 $\mathbf{a}_1, \dots, \mathbf{a}_n$ ， $\mathbf{b} \in \mathbb{R}^m$ ，则*矩阵方程*

$\mathbf{A} \mathbf{x} = \mathbf{b}$

与向量方程

$x_1 \mathbf{a}_1 + x_2 \mathbf{a}_2 + \dots + x_n \mathbf{v}_n = \mathbf{b}$

有相同解集。后者又与增广矩阵为

$\begin{bmatrix*}
\mathbf{a}_1 & \mathbf{a}_2 & \dots & \mathbf{a}_n & \mathbf{b}
\end{bmatrix*}$

的线性方程组有相同解集。

*定理 4*

若 $\mathbf{A}$ 是 $m \times n$ 矩阵，则下列命题等价

1. 对 $\mathbb{R}^m$ 中的每个 $\mathbb{b}$ ，方程 $\mathbf{A} \mathbf{x} = \mathbf{b}$ 都有解
2.  $\mathbb{R}^m$ 中的每个 $\mathbb{b}$ 都是 $\mathbf{A}$ 的列的一个线性组合
3.  $\mathbf{A}$ 的各列生成 $\mathbb{R}^m$
4.  $\mathbf{A}$ 的每一行都有一个主元

## 线性方程组的解集

## 线性无关

## 线性变换

## 线性变换的矩阵