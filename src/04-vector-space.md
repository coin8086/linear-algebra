# 4 向量空间

## 4.1 向量空间与子空间

### 向量空间的定义

一个*向量空间*是由一些被称为*向量*的对象构成的非空集合 $V$ ，并且 $V$ 上定义了加法运算和标量（标量可取实数或复数，以下不再重复强调）乘法运算，服从以下公理：

对 $V$ 中任意向量 $\mathbf{u}, \mathbf{v}, \mathbf{w}$ 以及标量 $c, d$ ，都有

1. $\mathbf{u}, \mathbf{v}$ 之和（表示为 $\mathbf{u} + \mathbf{v}$ ）属于 $V$
2. $\mathbf{u} + \mathbf{v} = \mathbf{v} + \mathbf{u}$
3. $(\mathbf{u} + \mathbf{v}) + \mathbf{w} = \mathbf{u} + (\mathbf{v} + \mathbf{w})$
4. $V$ 中存在一个零向量 $\mathbf{0}$ ，使得 $\mathbf{u} + \mathbf{0} = \mathbf{u}$
5. 对 $V$ 中任意向量 $\mathbf{u}$ ，存在一个负向量 $-\mathbf{u}$ 属于 $V$ ，使得 $\mathbf{u} + (-\mathbf{u}) = \mathbf{0}$
6. $\mathbf{u}$ 与标量 $c$ 的标量乘法（表示为 $c \mathbf{u}$ ）属于 $V$
7. $c(\mathbf{u} + \mathbf{v}) = c \mathbf{u} + c \mathbf{v}$
8. $(c + d)\mathbf{u} = c \mathbf{u} + d \mathbf{u}$
9. $c(d \mathbf{u}) = (cd) \mathbf{u}$
10. $1 \mathbf{u} = \mathbf{u}$

由以上公里可知

* 一个向量空间的零向量是唯一的
* 每个向量对应的负向量也是唯一的

此外，对 $V$ 中任意向量 $\mathbf{u}$ 和任意标量 $c$ ，有

* $0 \mathbf{u} = \mathbf{0}$
* $c \mathbf{0} = \mathbf{0}$
* $- \mathbf{u} = (-1) \mathbf{u}$

### 子空间的定义

向量空间 $V$ 的一个子空间是 $V$ 的一个满足以下性质的子集 $H$

1. $V$ 中的零向量在 $H$ 中
2. $H$ 对向量加法封闭，即 $\forall \mathbf{u}, \mathbf{v} \in H, \; \mathbf{u} + \mathbf{v} \in H$
3. $H$ 对标量乘法封闭，即 $\forall \mathbf{u} \in H, \forall c \in \mathbb{R}, \; c \mathbf{u} \in H$

*标量可以是复数，即 $c \in \mathbb{C}$*

向量空间 $V$ 中仅由零向量组成的集合是 $V$ 的一个子空间，称为*零子空间*，记作 $\mathbf{0}$ 。

### 由一个集合生成的子空间

*线性组合*

与[第一章](01-linear-equations.md#线性组合)相同，线性组合表示一些向量的任意标量乘积之和。向量 $\mathbf{v}_1, \dots, \mathbf{v}_n$ 的线性组合可表示为 $\mathrm{Span} \{ \mathbf{v}_1, \dots, \mathbf{v}_n \}$

*定理 1*

若向量 $\mathbf{v}_1, \dots, \mathbf{v}_n$ 在向量空间 $V$ 中，则 $\mathrm{Span} \{ \mathbf{v}_1, \dots, \mathbf{v}_n \}$ 是 $V$ 的一个子空间。

称 $\mathrm{Span} \{ \mathbf{v}_1, \dots, \mathbf{v}_n \}$ 是由 $\mathbf{v}_1, \dots, \mathbf{v}_n$ 生成（或张成）的子空间。

## 4.2 零空间、列空间和线性变换

### 矩阵的零空间

矩阵 $A$ 的零空间记作 $\mathrm{Nul} \ A$ ，它是齐次方程 $A \mathbf{x} = \mathbf{0}$ 的解集，即

$$\mathrm{Nul} \ A = \{ \mathbf{x} : A \mathbf{x} = \mathbf{0} \}$$

*定理 2*

$m \times n$ 矩阵 $A$ 的零空间是 $\mathbb{R}^n$ 的一个子空间。等价地， $m$ 个方程、 $n$ 个未知数的齐次线性方程组 $A \mathbf{x} = \mathbf{0}$ 的解集是 $\mathbb{R}^n$ 的一个子空间。

### 矩阵的列空间

$m \times n$ 矩阵 $A$ 的列空间（记作 $\mathrm{Col} \ A$ ）是由 $A$ 的列的所有线性组合的集合。若 $A = [\mathbf{a}_1 \dots \mathbf{a}_n]$ ，则 $\mathrm{Col} \ A = \mathrm{Span} \{ \mathbf{a}_1, \dots, \mathbf{a}_n \}$

*定理 3*

$m \times n$ 矩阵 $A$ 的列空间是 $\mathbb{R}^m$ 的一个子空间。

### 线性变换及其核与值域

由向量空间 $V$ 映射到向量空间 $W$ 的*线性变换* $T$ 是一个规则，它将 $V$ 中每个向量 $\mathbf{x}$ 映射成 $W$ 中唯一向量 $T(\mathbf{x})$ ，并且满足

1. $T(\mathbf{u} + \mathbf{v}) = T(\mathbf{u}) + T(\mathbf{v})$ ，对 $V$ 中所有 $\mathbf{u}, \mathbf{v}$ 都成立
2. $T(c \mathbf{u}) = c T(\mathbf{u})$ ，对 $V$ 中所有 $\mathbf{u}$ 及数 $c$ 都成立

线性变换 $T$ 的*核*（或*零空间*）是 $V$ 中所有满足 $T(\mathbf{x}) = \mathbf{0}$ 的向量 $\mathbf{x}$ 的集合， $T$ 的*值域*是 $W$ 中所有具有形式 $T(\mathbf{x})$ 的向量的集合。若 $T$ 是一个矩阵变换 $T(\mathbf{x}) = A \mathbf{x}$ ，则 $T$ 的核与值域就是矩阵 $A$ 的零空间与列空间。

## 4.3 线性无关和基

### 线性无关/相关

$V$ 中的一组向量 $\mathbf{v}_1, \dots, \mathbf{v}_n$ 是*线性无关的*，若向量方程

$$c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n = \mathbf{0}$$

仅有平凡解，即 $c_1 = \dots = c_n = 0$

$\mathbf{v}_1, \dots, \mathbf{v}_n$ 是线性相关的，若以上方程有非平凡解，即 $c_1, \dots, c_n$ 不全为零。

*定理 4*

两个或更多个向量线性相关，当且仅当其中至少有一个向量是其他向量的线性组合。

### 基

设 $H$ 是向量空间 $V$ 的一个子空间， $V$ 中的一组向量 $\mathcal{B} = \{ \mathbf{b}_1, \dots, \mathbf{b}_p \}$ 称为 $H$ 的一个*基*，若

1. $\mathcal{B}$ 是线性无关的
2. $\mathcal{B}$ 生成 $H$ ，即 $H = \mathrm{Span} \ \mathcal{B}$

集合 $\{ \mathbf{e}_1, \dots, \mathbf{e}_n \}$ 称为 $\mathbb{R}^n$ 的标准基。

### 生成集定理

*定理 5*

设 $S = \{ \mathbf{v}_1, \dots, \mathbf{v}_p \}$ 是 $V$ 中的向量集， $H = \mathrm{Span} \ S$ ，则

1. 若 $S$ 中某一向量，如 $\mathbf{v}_k$ ，是 $S$ 中其余向量的线性组合，则 $S$ 中去掉 $\mathbf{v}_k$ 后形成的集合仍可生成 $H$
2. 若 $H \ne \{ \mathbf{0} \}$ ，则 $S$ 的某一子集是 $H$ 的一个基

### $\mathrm{Nul} \ A$ 和 $\mathrm{Col} \ A$ 的基

用参数向量表示方程 $A \mathbf{x} = \mathbf{0}$ 的解集，可得 $\mathrm{Nul} \ A$ 的基。

*定理 6*

矩阵 $A$ 的主元列构成 $\mathrm{Col} \ A$ 的一个基。

## 4.4 坐标系

### 坐标的定义

*定理 7* (唯一表示定理)

设 $\mathcal{B} = \{ \mathbf{b}_1, \dots, \mathbf{b}_n \}$ 是向量空间 $V$ 的一个基，则对 $V$ 中的每个向量 $\mathbf{x}$ ，存在唯一的一组数 $c_1, \dots, c_n$ ，使得

$$\mathbf{x} = c_1 \mathbf{b}_1 + \dots + c_n \mathbf{b}_n$$

*定义*

设 $\mathcal{B} = \{ \mathbf{b}_1, \dots, \mathbf{b}_n \}$ 是 $V$ 的一个基， $\mathbf{x} \in V$ ， $\mathbf{x}$ 相对于基 $\mathcal{B}$ 的坐标（或 $\mathbf{x}$ 的 $\mathcal{B}-$ 坐标）是使 $\mathbf{x} = c_1 \mathbf{b}_1 + \dots + c_n \mathbf{b}_n$ 的权 $c_1, \dots, c_n$ ，即

$$[\mathbf{x}]_B =
\begin{bmatrix*}
c_1 \\
\vdots \\
c_n
\end{bmatrix*}$$

映射 $\mathbf{x} \mapsto [\mathbf{x}]_B$ 称为（由 $\mathcal{B}$ 确定的）坐标映射。

### $\mathbb{R}^n$ 中的坐标

对 $\mathbb{R}^n$ 中的一个基 $\mathcal{B} = \{ \mathbf{b}_1, \dots, \mathbf{b}_n \}$ ，设 $P_B = [\mathbf{b}_1 \dots \mathbf{b}_n]$ ，则向量方程

$$\mathbf{x} = c_1 \mathbf{b}_1 + \dots + c_n \mathbf{b}_n$$

等价于

$$\mathbf{x} = P_B[\mathbf{x}]_B$$

称 $P_B$ 为从 $\mathcal{B}$ 到 $\mathbb{R}^n$ 中标准基的*坐标变换矩阵*。

$P_B$ 是可逆的，因此

$$[\mathbf{x}]_B = P_B^{-1} \mathbf{x}$$

### 坐标映射

*定理 8*

设 $\mathcal{B} = \{ \mathbf{b}_1, \dots, \mathbf{b}_n \}$ 是向量空间 $V$ 的一个基，则坐标映射 $\mathbf{x} \mapsto [\mathbf{x}]_B$ 是一个由 $V$ 映上到 $\mathbb{R}^n$ 的一对一的线性变换。

*同构*

坐标映射是*同构*的。一般地，从一个向量空间 $V$ 映上到另一个向量空间 $W$ 的一对一线性变换称为从 $V$ 到 $W$ 上的一个同构。

*每一个在 $V$ 中的向量空间的计算可以完全相同的出现在 $W$ 中，反之亦然。* 例如，对于向量的线性相关关系，在 $V$ 中线性相关（或无关）的向量集合，映射到同构的空间 $W$ 中，也是线性相关（或无关）的。

## 4.5 向量空间的维数

### 维数的定义

*定理 9*

设 $\mathcal{B} = \{ \mathbf{b}_1, \dots, \mathbf{b}_n \}$ 是向量空间 $V$ 的一个基，则 $V$ 中任意包含多于 $n$ 个向量的集合一定线性相关。

*定理 10*

设 $\mathcal{B} = \{ \mathbf{b}_1, \dots, \mathbf{b}_n \}$ 是向量空间 $V$ 的一个基，则 $V$ 的每个基都有 $n$ 个向量。

*定义*

若 $V$ 由一个有限集生成，则称 $V$ 是*有限维*的。 $V$ 的维数记作 $\dim V$ ，是 $V$ 的基的向量个数。零向量空间 $\{ \mathbf{0} \}$ 的维数定义为零。若 $V$ 不能由有限集生成，则称 $V$ 是*无穷维*的。

### 有限维空间的子空间

*定理 11*

设 $H$ 是有限维向量空间 $V$ 的子空间，则 $H$ 中任意一个线性无关集都可以扩充成 $H$ 的一个基。 $H$ 也是有限维的，且 $\dim H \le \dim V$

*定理 12* （基定理）

设 $V$ 是一个 $p$ 维向量空间， $p \ge 1$ ， $V$ 中任意含有 $p$ 个元素的线性无关集必然是 $V$ 的一个基。任意含有 $p$ 个元素且能生成 $V$ 的集合也是 $V$ 的一个基。

### $\mathrm{Nul} \ A$ 和 $\mathrm{Col} \ A$ 的维数

$\mathrm{Nul} \ A$ 的维数是方程 $A \mathbf{x} = \mathbf{0}$ 中自由变量的个数； $\mathrm{Col} \ A$ 的维数是 $A$ 中主元列的个数。

## 4.6 秩

### 行空间

*定义*

设 $A$ 是一个 $m \times n$ 矩阵，则 $A$ 的每一行具有 $n$ 个元素，可视为 $\mathbb{R}^n$ 中的一个向量。 $A$ 的行向量的所有线性组合的集合称为 $A$ 的*行空间*，记作 $\mathrm{Row} \ A$

*定理 13*

若两个矩阵 $A$ 和 $B$ 行等价，则它们的行空间相同。若 $B$ 是阶梯形矩阵，则 $B$ 的非零行构成 $B$ 的行空间的一个基，同时它也是 $A$ 的行空间的一个基。

### 秩

*定义*

$A$ 的秩即 $A$ 的列空间的维数，记作 $\mathrm{rank} \ A$

*定理 14* （秩定理）

$m \times n$ 矩阵 $A$ 的列空间和行空间的维数相等，这个公共的维数（即 $A$ 的秩）等于 $A$ 的主元位置个数，且满足

$$\mathrm{rank} \ A + \dim \mathrm{Nul} \ A = n$$

### 秩与可逆矩阵

*可逆矩阵定理（续）*

若 $A$ 是一个 $n \times n$ 矩阵，则下列各个命题与 $A$ 是可逆矩阵的命题等价

* $A$ 的列向量构成 $\mathbb{R}^n$ 的一个基
* $\mathrm{Col} \, A = \mathbb{R}^n$
* $\dim \mathrm{Col} \, A = n$
* $\mathrm{rank} \, A = n$
* $\mathrm{Nul} \, A = \{ \mathbf{0} \}$
* $\dim \mathrm{Nul} \, A = 0$

## 4.7 基的变换

### 坐标变换矩阵

*定理 15*

设 $\mathcal{B} = \{ \mathbf{b}_1, \dots, \mathbf{b}_n \}$ 和 $\mathcal{C} = \{ \mathbf{c}_1, \dots, \mathbf{c}_n \}$ 是向量空间 $V$ 的基，则存在一个 $n \times n$ 矩阵 $\underset{B \mapsto C}{P}$ 使得

$$[\mathbf{x}]_C = \underset{B \mapsto C}{P} [\mathbf{x}]_B$$

$\underset{B \mapsto C}{P}$ 的列是基 $\mathcal{B}$ 中向量的 $\mathcal{C}-$ 坐标向量，即

$$\underset{B \mapsto C}{P} = [[\mathbf{b}_1]_C \dots [\mathbf{b}_n]_C]$$

矩阵 $\underset{B \mapsto C}{P}$ 称为*由 $\mathcal{B}$ 到 $\mathcal{C}$ 的坐标变换矩阵*（*而且是满足条件的唯一矩阵*）。

易知 $\underset{B \mapsto C}{P}$ 是可逆矩阵（因为 $\mathbf{b}_1, \dots, \mathbf{b}_n$ 线性无关，且 $[\mathbf{b}_1]_C, \dots, [\mathbf{b}_n]_C$ 与之同构），因此

$$[\mathbf{x}]_B = (\underset{B \mapsto C}{P})^{-1} [\mathbf{x}]_C$$

即

$$(\underset{B \mapsto C}{P})^{-1} = \underset{C \mapsto B}{P} = [[\mathbf{c}_1]_B \dots [\mathbf{c}_n]_B]$$

### $\mathbb{R}^n$ 中基的变换

设 $\mathcal{B} = \{ \mathbf{b}_1, \dots, \mathbf{b}_n \}$ 和 $\mathcal{C} = \{ \mathbf{c}_1, \dots, \mathbf{c}_n \}$ 是 $\mathbb{R}^n$ 的基，则可以通过以下增广矩阵来求 $\underset{B \mapsto C}{P}$

$$[\mathbf{c}_1 \dots \mathbf{c}_n \ | \ \mathbf{b}_1 \dots \mathbf{b}_n ] \sim [I \ | \ \underset{B \mapsto C}{P}]]$$

以上增广矩阵等价于以下线性方程组群

$$\begin{align*}
  C \mathbf{x} &= \mathbf{b}_1 \; (\mathbf{x} = [\mathbf{b}_1]_C) \\
  &\vdots \\
  C \mathbf{x} &= \mathbf{b}_n \; (\mathbf{x} = [\mathbf{b}_n]_C)
\end{align*}$$

等价于以下矩阵-矩阵方程

$$C X = B$$

可见，除了行化简增广矩阵，还可由 $X = C^{-1} B$ 求解。

此外，由

$$\mathbf{x} = P_B [\mathbf{x}]_B = P_C [\mathbf{x}]_C$$

可得

$$[\mathbf{x}]_C = P_C^{-1} P_B [\mathbf{x}]_B$$

比较上面的矩阵-矩阵方程，有异曲同工之妙，但增广矩阵的算法更快。

## 4.8 差分方程中的应用

（略）

## 4.9 马尔可夫链中的应用

（略）
