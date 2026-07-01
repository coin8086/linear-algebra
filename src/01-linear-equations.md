# 1 线性方程组

## 1.1 线性方程组

### 线性方程组的基本概念

*线性方程*

线性方程是形如

$$a_1 x_1 + a_2 x_2 + \dots + a_n x_n = b$$

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

$$\begin{cases}
x_1 - 2 x_2 + x_3 = 0 \\
2 x_2 - 8 x_3 = 8 \\
5 x_1 - 5 x_3 = 10
\end{cases}$$

的系数矩阵是

$$\begin{bmatrix*}[r]
1 & -2 & 1 \\
0 & 2 & -8 \\
5 & 0 & -5
\end{bmatrix*}$$

把方程组等号右边的常数形成的一列加到系数矩阵右边，得到一个*增广矩阵*，（接上例）如

$$\begin{bmatrix*}[r]
1 & -2 & 1 & 0 \\
0 & 2 & -8 & 8 \\
5 & 0 & -5 & 10
\end{bmatrix*}$$

### 解线性方程组

解线性方程组的基本思路是把方程组用一个更容易解的等价方程组代替。这可以通过方程组的增广矩阵的一系列初等行变换来实现。

*初等行变换*有以下三种

1. 倍加 把某一行换成它与另一行的倍数的和
2. 倍乘 把某一行乘以一个非零的数
3. 对换 把某一行与另一行交换

初等行变换是*可逆*的。

*矩阵的行等价关系*

若一个矩阵经过一系列初等变换可以变成另一个矩阵，则称这两个矩阵*行等价*。

若两个线性方程组的增广矩阵是行等价的，则它们有相同解集。

### 存在性与唯一性问题

线性方程组有两个基本问题：

1. 方程组是否相容，即是否有解
2. 若有解，解是否唯一

## 1.2 行化简与阶梯形矩阵

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

用行化简算法把方程组的增广矩阵化为简化阶梯型后，对应于主元列的变量称为基本变量，其他变量称为自由变量。

*解集的参数表示*

若方程组有自由变量，可以用它作为参数得到解集的参数表示。例如，对某个简化后的增广矩阵

$$\begin{bmatrix*}[r]
1 & 0  & -5 & 1 \\
0 & 1 & 1 & 4 \\
0 & 0 & 0 & 0
\end{bmatrix*}$$

解集的参数表示为

$$\begin{cases}
x_1 = 5 x_3 + 1 \\
x_2 = -x_3 + 4\\
x_3 \; \text{是自由变量}
\end{cases}$$

### 解的存在性与唯一性

*定理 2*

线性方程组相容的充要条件是增广矩阵的最右列不是主元列，即，增广矩阵的阶梯型没有形如

$$[0 \dots 0 \; b], \quad b \ne 0$$

的行。若方程组相容，则

1. 当没有自由变量时，有唯一解
2. 当存在自由变量时，有无穷多解

*用行简化算法解线性方程组的步骤*

1. 写出方程组的增广矩阵
2. 用行化简算法把增广矩阵化为阶梯型并确定方程组是否相容，如果不相容则无解、停止
3. 继续行化简算法得到简化阶梯型
4. 写出简化阶梯型矩阵对应的方程组
5. 把上一步得到的每个非零方程改写为用自由变量（如果有）表示基本变量的形式

## 1.3 向量方程

线性方程组的重要性质都可以用向量的概念和符号来描述。

### 向量的概念和运算

*向量*

第四章“向量空间”将对向量做一个正式的定义。在此之前，我们可以把仅含一列的矩阵称为*向量*。它表示一组有序数，如

$$\mathbf{u} = \begin{bmatrix*}
u_1 \\
u_2 \\
\vdots \\
u_n
\end{bmatrix*}$$

$\mathbf{u}$ 是一个 $n$ 元有序数组

*$\mathbb{R}^n$ 中的向量*

$\mathbb{R}^n$ 表示所有 $n$ 元有序实数组的集合，其中 $n$ 是正整数。

$\mathbb{R}^n$ 定义了它的向量的加法和标量乘法运算，以及向量的相等关系和零向量 $\mathbf{0}$ 。此外， $\mathbb{R}^n$ 中的向量还具有以下代数性质

对 $\mathbb{R}^n$ 中的一切向量 $\mathbf{u}, \mathbf{v}, \mathbf{w}$ 以及标量 $c, d$

1. $\mathbf{u} + \mathbf{v} = \mathbf{v} + \mathbf{u}$
2. $(\mathbf{u} + \mathbf{v}) + \mathbf{w} = u + (\mathbf{v} + \mathbf{w})$
3. $\mathbf{u} + \mathbf{0} = \mathbf{u}$
4. $\mathbf{u} + (- \mathbf{u}) = \mathbf{0}$
5. $c(\mathbf{u} + \mathbf{v}) = c \mathbf{u} + c \mathbf{v}$
6. $(c + d)\mathbf{u} = c \mathbf{u} + d \mathbf{u}$
7. $c(d \mathbf{u}) = (cd) \mathbf{u}$
8. $1 \mathbf{u} = \mathbf{u}$

### 线性组合

*线性组合*

设 $\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p$ 是 $\mathbb{R}^n$ 中的向量， $c_1, c_2, \dots, c_p$ 是标量，则向量

$$\mathbf{y} = c_1 \mathbf{v}_1 + c_2 \mathbf{v}_2 + \dots + c_p \mathbf{v}_p$$

称为向量 $\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p$ 以 $c_1, c_2, \dots, c_p$ 为*权*的线性组合。

*线性组合与线性方程组的关系*

*向量方程*

$$x_1 \mathbf{a}_1 + x_2 \mathbf{a}_2 + \dots + x_n \mathbf{v}_n = \mathbf{b}$$

和增广矩阵为

$$\begin{bmatrix*}
\mathbf{a}_1 & \mathbf{a}_2 & \dots & \mathbf{a}_n & \mathbf{b}
\end{bmatrix*}$$

的线性方程组有相同的解集。因此，向量 $\mathbf{b}$ 可以表示为 $\mathbf{a}_1 \; \mathbf{a}_2 \; \dots \; \mathbf{a}_n$ 的线性组合当且仅当对应的线性方程组有解。

*向量生成的集合*

设 $\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p$ 是 $\mathbb{R}^n$ 中的向量，则它们的所有线性组合所形成的集合可表示为 $\mathrm{Span} \{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p \}$ ，称为由 $\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p$ 所生成（或张成）的 $\mathbb{R}^n$ 的子集，即

$$\mathrm{Span} \{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p \} = \{ c_1 \mathbf{v}_1 + c_2 \mathbf{v}_2 + \dots + c_p \mathbf{v}_p \; | \; c_i \in \mathbb{R}, \; v_i \in \mathbb{R}^n \}$$

线性代数的一个主要思想是研究可以表示为某一固定向量集合 $\{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p \}$ 的线性组合的所有向量，即 $\mathrm{Span} \{\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p \}$

*$\mathrm{Span} \{\mathbf{v} \}$ 与 $\mathrm{Span} \{\mathbf{u}, \mathbf{v} \}$ 的几何意义*

若 $\mathbf{u}, \mathbf{v} \in \mathbb{R}^3$ ，且 $\mathbf{u}, \mathbf{v} \ne \mathbf{0}, \; \mathbf{u} \ne c \mathbf{v}$ ，则

* $\mathrm{Span} \{\mathbf{v} \}$ 是空间中的通过原点的直线
* $\mathrm{Span} \{\mathbf{u}, \mathbf{v} \}$ 是空间中通过原点的平面

## 1.4 矩阵方程 $\mathbf{A} \mathbf{x} = \mathbf{b}$

### 矩阵-向量积

*定义*

若 $\mathbf{A}$ 是 $m \times n$ 矩阵，其各列为 $\mathbf{a}_1, \dots, \mathbf{a}_n$ ， $\mathbf{x} \in \mathbb{R}^n$ ，则 $\mathbf{A}$ 与 $\mathbf{x}$ 的积 $\mathbf{A} \mathbf{x}$ 就是 $\mathbf{A}$ 的各列以 $\mathbf{x}$ 中对应元素为权的线性组合，即

$$\mathbf{A} \mathbf{x} =
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
$$

*性质（定理 5）*

若 $\mathbf{A}$ 是 $m \times n$ 矩阵， $\mathbf{u}, \mathbf{v} \in \mathbb{R}^n$ ， $c$ 是标量，则

* $\mathbf{A} (\mathbf{u} + \mathbf{v}) = \mathbf{A} \mathbf{u} + \mathbf{A} \mathbf{v}$
* $\mathbf{A} (c \mathbf{u}) = c (\mathbf{A} \mathbf{u})$

### 矩阵方程

*定理3*

若 $\mathbf{A}$ 是 $m \times n$ 矩阵，其各列为 $\mathbf{a}_1, \dots, \mathbf{a}_n$ ， $\mathbf{b} \in \mathbb{R}^m$ ，则*矩阵方程*

$$\mathbf{A} \mathbf{x} = \mathbf{b}$$

与向量方程

$$x_1 \mathbf{a}_1 + x_2 \mathbf{a}_2 + \dots + x_n \mathbf{v}_n = \mathbf{b}$$

有相同解集。后者又与增广矩阵为

$$\begin{bmatrix*}
\mathbf{a}_1 & \mathbf{a}_2 & \dots & \mathbf{a}_n & \mathbf{b}
\end{bmatrix*}$$

的线性方程组有相同解集。

*定理 4*

若 $\mathbf{A}$ 是 $m \times n$ 矩阵，则下列命题等价

1. 对 $\mathbb{R}^m$ 中的每个 $\mathbf{b}$ ，方程 $\mathbf{A} \mathbf{x} = \mathbf{b}$ 都有解
2.  $\mathbb{R}^m$ 中的每个 $\mathbf{b}$ 都是 $\mathbf{A}$ 的列的一个线性组合
3.  $\mathbf{A}$ 的各列生成 $\mathbb{R}^m$
4.  $\mathbf{A}$ 的每一行都有一个主元位置

## 1.5 线性方程组的解集

### 齐次线性方程组

若线性方程组可写成 $\mathbf{A} \mathbf{x} = \mathbf{0}$ ，其中 $\mathbf{A}$ 是 $m \times n$ 矩阵， $\mathbf{0} \in \mathbb{R}^m$ ，则称该线性方程组是*齐次*的。它至少有一个解 $\mathbf{x} = \mathbf{0} \; (\mathbf{0} \in \mathbb{R}^n)$ ，称为它的*平凡解*。

### 解的参数向量形式

若方程组有自由变量，则可用它作为参数得到解集的参数表示。例如，对某个简化后的增广矩阵

$$\begin{bmatrix*}[r]
1 & 0  & -5 & 1 \\
0 & 1 & 1 & 4 \\
0 & 0 & 0 & 0
\end{bmatrix*}$$

解集的参数表示为

$$\begin{cases}
x_1 = 5 x_3 + 1 \\
x_2 = -x_3 + 4\\
x_3 = x_3 \quad (x_3\text{是自由变量})
\end{cases}$$

解集的*参数向量表示*为

$$\mathbf{x} =
s \begin{bmatrix*}[r]
5 \\
-1 \\
1
\end{bmatrix*} +
\begin{bmatrix*}[r]
1 \\
4 \\
0
\end{bmatrix*}$$

### 非齐次线性方程组

*定理 6*

若方程 $\mathbf{A} \mathbf{x} = \mathbf{b}$ 有解， $\mathbf{p}$ 是它的某个解，则方程 $\mathbf{A} \mathbf{x} = \mathbf{b}$ 的解集可表示为 $\mathbf{w} = \mathbf{p} + \mathbf{v}$ ，其中 $\mathbf{v}$ 是齐次方程 $\mathbf{A} \mathbf{x} = \mathbf{0}$ 的任一解。

该定理说明，若 $\mathbf{A} \mathbf{x} = \mathbf{b}$ 有解，则解集可由 $\mathbf{A} \mathbf{x} = \mathbf{0}$ 的解集平移 $\mathbf{p}$ 得到。

## 1.7 线性无关

### 向量线性无关

若向量方程

$$x_1 \mathbf{v}_1 + x_2 \mathbf{v}_2 + \dots + x_p \mathbf{v}_p = \mathbf{0}$$

仅有平凡解，则称向量组 $\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p$ 是线性无关的；若方程存在非平凡解，则称向量组 $\mathbf{v}_1, \mathbf{v}_2, \dots, \mathbf{v}_p$ 是线性相关的。一组向量不是线性无关就是线性相关。

### 矩阵各列线性无关

矩阵 $\mathbf{A}$ 的各列之间的一个线性相关关系对应于方程 $\mathbf{A} \mathbf{x} = \mathbf{0}$ 的一个非平凡解。因此，矩阵 $\mathbf{A}$ 的各列线性无关当且仅当方程 $\mathbf{A} \mathbf{x} = \mathbf{0}$ 仅有平凡解。

### 线性无关性的判别

注：以下判别规则所提到的向量集合中的向量都具有相同的维度。

*一个向量的集合*

含有一个向量 $\mathbf{v}$ 的集合线性无关当且仅当 $\mathbf{v} \ne \mathbf{0}$

*两个向量的集合*

含有两个向量的集合线性无关当且仅当一个向量不是另一个向量的倍数时。在 $\mathbb{R}^3$ 中，两个线性无关的向量不平行（也不重合）。

*多个向量的集合*

*定理 7*

两个或更多个向量线性相关，当且仅当其中至少有一个向量是其他向量的线性组合。

*定理 8*

若一组向量的向量个数超过每个向量的元素个数，则这组向量必线性相关。

*定理 9*

若一组向量包含零向量，则它们线性相关。

> 实际上，若一组向量线性相关，则向这组向量中加入一个新的向量所形成的新的向量集合也必线性相关；同理，一个线性无关的向量集合，它的任意非空子集必是线性无关的。

## 1.8 线性变换

### 有关变换的基本概念

由 $\mathbb{R}^n$ 到 $\mathbb{R}^m$ 的一个*变换*（或称*函数*、*映射*） $T$ 是一个规则，它把 $\mathbb{R}^n$ 中的每个向量 $\mathbf{x}$ 对应到 $\mathbb{R}^m$ 中的一个向量 $T(\mathbf{x})$ 。 $\mathbb{R}^n$ 称为 $T$ 的*定义域*， $\mathbb{R}^m$ 称为 $T$ 的*上域*，所有 $T(\mathbf{x})$ 的集合称为 $T$ 的*值域*。

以上变换可记作

$$T: \mathbb{R}^n \to \mathbb{R}^m$$

若 $T(\mathbf{x}) = \mathbf{b}$ ，则称 $\mathbf{b}$ 为 $\mathbf{x}$ 在 $T$ 作用下的*像*，称 $\mathbf{x}$ 为 $\mathbf{b}$ 的*原像*。

### 矩阵变换

对于 $\mathbb{R}^n$ 中每个 $\mathbf{x}$ ，设 $T(\mathbf{x}) = \mathbf{A} \mathbf{x}$ ，其中 $\mathbf{A}$ 是 $m \times n$ 矩阵，有时将这样一个*矩阵变换*记为

$$\mathbf{x} \to \mathbf{A} \mathbf{x}$$

$T$ 的值域为 $\mathbf{A}$ 的列的所有线性组合的集合。

### 线性变换

变换 $T$ 称为*线性*的，若

1. 对 $T$ 定义域中的一切 $\mathbf{u}, \mathbf{v}$ ，有 $T(\mathbf{u} + \mathbf{v}) = T(\mathbf{u}) + T(\mathbf{v})$
2. 对 $T$ 定义域中的一切 $\mathbf{u}$ 和数 $c$ ，有 $T(c \mathbf{u}) = c T(\mathbf{u})$

矩阵变换都是线性变换。

> 线性变换“保持”向量的的加法运算与标量乘法运算。

若 $T$ 是线性变换，则

1. $T(\mathbf{0}) = \mathbf{0}$
2. $T(c \mathbf{u} + d \mathbf{v}) = c T(\mathbf{u}) + d T(\mathbf{v})$ ，其中 $\mathbf{u}$ 和 $\mathbf{v}$ 是 $T$ 定义域中的向量， $c$ 和 $d$ 是数

若一个变换满足 $T(c \mathbf{u} + d \mathbf{v}) = c T(\mathbf{u}) + d T(\mathbf{v})$ 则它是线性变换。它可以推广为

$$T(c_1 \mathbf{v}_1 + c_2 \mathbf{v}_2 + \dots + c_p \mathbf{v}_p) = c_1 T(\mathbf{v}_1) + c_2 T(\mathbf{v}_2) + \dots + c_p T(\mathbf{v}_p)$$

此即*叠加原理*。

## 1.9 线性变换的矩阵

### 线性变换的标准矩阵

*定理 10*

设 $T: \mathbb{R}^n \to \mathbb{R}^m$ 为线性变换，则存在唯一的矩阵 $\mathbf{A}$ ，使得对 $\mathbb{R}^n$ 中的一切 $\mathbf{x}$ 有

$$T(\mathbf{x}) = \mathbf{A} \mathbf{x}$$

其中， $\mathbf{A}$ 是 $m \times n$ 矩阵，它的第 $i$ 列是向量 $T(\mathbf{e}_i)$ ，其中 $\mathbf{e}_i$ 是单位矩阵 $\mathbf{I}_n$ 的第 $i$ 列，即

$$\mathbf{A} = [T(\mathbf{e}_1) \; T(\mathbf{e}_2) \; \dotsb \; T(\mathbf{e}_n)]$$

以上矩阵 $\mathbf{A}$ 称为线性变换 $T$ 的*标准矩阵*。

### 几何线性变换

在 $\mathbb{R}^2$ 中，通过线性变换可以实现图像的对称、缩放、剪切和投影等几何变换。

### 原像的存在性与唯一性

*满射*

映射 $T: \mathbb{R}^n \to \mathbb{R}^m$ 称为*到 $\mathbb{R}^m$ 上的映射*（又称*满射*），若 $\mathbb{R}^m$ 中的每个元素在 $\mathbb{R}^n$ 中都有（至少一个）原像。

> 设 $T: \mathbb{R}^n \to \mathbb{R}^m$ 是线性变换， $\mathbf{A}$ 是 $T$ 的标准矩阵，则 $T$ 是满射当且仅当 $\mathbf{A}$ 的每一行都有一个主元位置。这可以通过 [定理 4](#矩阵方程) 直接得出。

*单射*

映射 $T: \mathbb{R}^n \to \mathbb{R}^m$ 称为*一对一映射*（又称*单射*），若 $\mathbb{R}^m$ 中的每个元素在 $\mathbb{R}^n$ 中最多有一个原像（或没有原像）。

*定理 11*

设 $T: \mathbb{R}^n \to \mathbb{R}^m$ 是线性变换， $\mathbf{A}$ 是 $T$ 的标准矩阵，则 $T$ 是单射当且仅当方程 $\mathbf{A} \mathbf{x} = \mathbf{0}$ 仅有平凡解。

> 联系 [定理 6](#非齐次线性方程组) ： $\mathbf{A} \mathbf{x} = \mathbf{0}$ 与 $\mathbf{A} \mathbf{x} = \mathbf{b}$ 的解集之间的关系： $\mathbf{w} = \mathbf{p} + \mathbf{v}$ ，可证明定理 11。

*定理 12*

设 $T: \mathbb{R}^n \to \mathbb{R}^m$ 是线性变换， $\mathbf{A}$ 是 $T$ 的标准矩阵，则

1.  $T$ 把 $\mathbb{R}^n$ *映上*到 $\mathbb{R}^m$ ，当且仅当 $\mathbf{A}$ 的列生成 $\mathbb{R}^m$
2.  $T$ 是单射，当且仅当 $\mathbf{A}$ 的列线性无关

## 1.10 商业、科学和工程中的线性模型

（略）

## 小结

本章以线性方程组为核心，介绍了线性方程组的解法和线性方程组在不同观点（增广矩阵、向量和矩阵方程）下的表示，以及线性组合、线性相关性和线性变换。

线性方程组在不同观点下的表示如下

![线性方程组](./assets/01-relations-a.svg)

虽然表示方法不同，但核心的问题都在于解的存在性与唯一性，如下

```{=latex}
\begin{minipage}{\textwidth}
\renewcommand{\arraystretch}{2.0}
```

|      | 解的存在性    | 解的唯一性
| :--: | :--------: | :--------:
| 增广矩阵 | 没有形如 $[0 \dots 0 \; b] \; (b \ne 0)$ 的行  | 没有自由变量
| 向量方程 | 看等价的增广矩阵 | 各向量线性无关
| 矩阵方程 | 看等价的增广矩阵 | 矩阵各列线性无关

```{=latex}
\end{minipage}
```

求解线性方程组的相关概念和方法如下

![解线性方程组](./assets/01-relations-b.svg)

齐次和非齐次线性方程组的解集之间有如下关系

![解集之间的关系](./assets/01-relations-c.svg)

线性组合与线性相关性的相关概念如下

![线性组合](./assets/01-relations-e.svg)

线性变换的相关概念如下

![线性变换](./assets/01-relations-d.svg)
