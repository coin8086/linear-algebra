# 5 特征值与特征向量

## 5.1 特征值与特征向量

### 特征值与特征向量

设 $A$ 为 $n \times n$ 矩阵， $\mathbf{x}$ 为非零向量，若存在数 $\lambda$ 使得 $A \mathbf{x} = \lambda \mathbf{x}$ 有非平凡解  ，则称 $\lambda$ 为 $A$ 的*特征值*，称 $\mathbf{x}$ 为对应于 $\lambda$ 的*特征向量*。

### 特征空间

$\lambda$ 是 $A$ 的特征值当且仅当方程

$$(A - \lambda I) \mathbf{x} = \mathbf{0}$$

有非平凡解。方程的解集是矩阵 $A - \lambda I$ 的零空间，也是 $\mathbb{R}^n$ 的子空间，称为 $A$ 对应于 $\lambda$ 的*特征空间*。特征空间由零向量和所有对应于 $\lambda$ 的特征向量组成。

### 三角矩阵的特征值

*定理 1*

三角矩阵的主对角线元素是其特征值。

### 特征向量的线性相关性

*定理 2*

设 $\lambda_1, \dots, \lambda_r$ 是 $n \times n$ 矩阵 $A$ 相异的特征值， $\mathbf{v}_1, \dots, \mathbf{v}_r$ 是与 $\lambda_1, \dots, \lambda_r$ 对应的特征向量，则向量集合 $\{ \mathbf{v}_1, \dots, \mathbf{v}_r \}$ 线性无关。

### 特征向量与差分方程

设 $\lambda_1, \dots, \lambda_r$ 是 $n \times n$ 矩阵 $A$ 相异的特征值， $\mathbf{v}_1, \dots, \mathbf{v}_r$ 是与 $\lambda_1, \dots, \lambda_r$ 对应的特征向量。对一阶差分方程

$$\mathbf{x}_{k + 1} = A \mathbf{x}_k \quad (k = 0, 1, 2, \dots)$$

若

$$\mathbf{x}_0 = c_1 \mathbf{v}_1  + c_2 \mathbf{v}_2 + \dots + c_r \mathbf{v}_r$$

则

$$\mathbf{x}_k = c_1 \lambda_1^k \mathbf{v}_1  + c_2 \lambda_2^k \mathbf{v}_2 + \dots + c_r \lambda_r^k \mathbf{v}_r$$

## 5.2 特征方程

### 行列式

设 $A$ 是 $n \times n$ 矩阵， $U$ 是对 $A$ 作行倍加和行交换（不作行倍乘）所得到的任一阶梯形矩阵， $r$ 是行交换的次数，则 $A$ 的*行列式* $\det A = (-1)^r u_{11} \dots u_{nn}$ 。若 $A$ 可逆，则 $u_{11}, \dots, u_{nn}$ 都是主元，否则，至少有 $u_{ii}$ 为零，从而乘积 $u_{11} \dots u_{nn}$ 为零，即

$$\det A = \begin{cases}
(-1)^r u_{11} \dots u_{nn} & \text{当 A 可逆} \\
0 & \text{当 A 不可逆} \\
\end{cases}$$

*定理*（可逆矩阵定理（续））

设 $A$ 是 $n \times n$ 矩阵，则 $A$ 可逆当且仅当

1. $0$ 不是 $A$ 的特征值
2. $A$ 的行列式不等于零

*定理 3*（行列式的性质）

设 $A$ 和 $B$ 是 $n \times n$ 矩阵

1. $A$ 可逆的充要条件是 $\det A \ne 0$
2. $\det (A B) = (\det A) (\det B)$
3. $\det A^T = \det A$
4. 若 $A$ 是三角矩阵，则 $\det A$ 是 $A$ 主对角线元素的乘积
5. 对 $A$ 作行倍加变换不改变其行列式的值；作一次行交换，行列式值的符号改变一次；用数 $x$ 倍乘一行后，行列式的值也变为原来的 $x$ 倍

### 特征方程

数值方程

$$\det (A - \lambda I) = 0$$

 称为矩阵 $A$ 的*特征方程*。

数 $\lambda$ 是矩阵 $A$ 的特征值的充要条件是 $\lambda$ 是 $A$ 的特征方程的根。

若 $A$ 是 $n \times n$ 矩阵，则 $\det (A - \lambda I)$ 是 $\lambda$ 的 $n$ 次多项式，称为 $A$ 的*特征多项式*。

特征值 $\lambda$ 作为特征方程根的重数称为 $\lambda$ 的*代数重数*。

$n \times n$ 矩阵的特征方程包含一个 $n$ 次多项式，如果算上重根，并允许有复根（称作*复特征值*），则特征方程恰好有 $n$ 个根。

> 对于大于 $2 \times 2$ 的矩阵，最佳的求特征值的数值方法并不使用特征方程。

### 相似性

*定义*

设 $A$ 和 $B$ 是 $n \times n$ 矩阵，若存在可逆矩阵 $P$ ，使得 $B = P^{-1}AP$ ，或等价地 $A = PBP^{-1}$ ，则称 $A$ *相似*于 $B$ 。若 $A$ 相似于 $B$ ，则 $B$ 也相似于 $A$ ，故简称 $A$ 与 $B$ *相似*。把 $A$ 变为 $B$ 的变换称为*相似变换*。

*定理 4*

若 $n \times n$ 矩阵 $A$ 与 $B$ 相似，则它们有相同的特征多项式，从而有相同的特征值（和相同的代数重数）。

## 5.3 对角化

### 对角化的应用

对角化矩阵可以快速计算矩阵乘幂或分析动力系统。

若 $A = P D P^{-1}$ ，其中 $D$ 是对角矩阵，则

$$A^k = P D^k P^{-1} = P \begin{bmatrix*}
d_{11}^k & 0      & \dots & 0        \\
0        & \ddots &       & \vdots   \\
\vdots   &        &\ddots & 0        \\
0        & \dots  & 0     & d_{nn}^k \\
\end{bmatrix*} P^{-1}$$

### 对角化

*定理 5*（对角化定理）

$n \times n$ 矩阵 $A$ 可对角化的充要条件是 $A$ 有 $n$ 个线性无关的特征向量。

事实上， $A = P D P^{-1}$ ， $D$ 为对角矩阵的充要条件是 $P$ 的列向量是 $A$ 的 $n$ 个线性无关的特征向量，且 $D$ 的主对角线上的元素是 $A$ 对应于 $P$ 中特征向量的特征值。

换句话说， $A$ 可对角化的充要条件是 $A$ 有足够的特征向量形成 $\mathbb{R}^n$ 的基。这样的基被称为*特征向量基*。

*对角化的步骤*

1. 求 $A$ 的特征值
2. 求 $A$ 的 $n$ 个线性无关的特征向量
3. 构造 $P$
4. 构造 $D$

### 可对角化的条件

*定理 6*

有 $n$ 个相异特征值的 $n \times n$ 矩阵可对角化。

*定理 7*

设 $A$ 是 $n \times n$ 矩阵，其相异的特征值是 $\lambda_1, \dots, \lambda_p$

1. 对 $1 \le k \le p$ ， $\lambda_k$ 的特征空间的维数不多于 $\lambda_k$ 的代数重数
2. 矩阵 $A$ 可对角化的充要条件是所有不同特征空间的维数之和等于 $n$ ，即
   1. 特征多项式可完全分解为线性因子
   2. 每个 $\lambda_k$ 的特征空间维数等于 $\lambda_k$ 的代数重数
3. 若 $A$ 可对角化， $\mathcal{B}_k$ 是对应于 $\lambda_k$ 的特征空间的基，则集合 $\mathcal{B}_1, \dots, \mathcal{B}_p$ 中所有向量的集合是 $\mathbb{R}^n$ 的特征向量基

## 5.4 特征向量与线性变换

### 线性变换的矩阵

设 $V$ 是 $n$ 维向量空间， $W$ 是 $m$ 维向量空间， $T$ 是 $V$ 到 $W$ 的线性变换， $\mathcal{B}$ 和 $\mathcal{C}$ 分别是 $V$ 和 $W$ 的基，若 $\mathbf{x} \in V, \quad T(x) \in W$ ，则

$$[T(\mathbf{x})]_C = M [\mathbf{x}]_B$$

其中，

$$M = [[T(\mathbf{b}_1)]_C \ \dots \ [T(\mathbf{b}_n)]_C]$$

$\{ \mathbf{b}_1, \mathbf{b}_2, \dots, \mathbf{b}_n \}$ 是 $V$ 的基 $\mathcal{B}$ 。矩阵 $M$ 是 $T$ 的矩阵表示，称为 $T$ 相对于基 $\mathcal{B}$ 和 $\mathcal{C}$ 的矩阵。

若 $V = W, \ T(\mathbf{x}) = \mathbf{x}$ ，则 $M$ 正好是[坐标变换矩阵](./04-vector-space.md#坐标变换矩阵)

$$M = [[T(\mathbf{b}_1)]_C \ \dots \ [T(\mathbf{b}_n)]_C]$$


### $V$ 到 $V$ 的线性变换

接上，当 $V = W, \ \mathcal{B} = \mathcal{C}$ 时， $M$ 称为 $T$ 相对于 $\mathcal{B}$ 的矩阵，或简称 $T$ 的 $\mathcal{B}-$ 矩阵，记为 $[T]_B$ 。

### $\mathbb{R}^n$ 上的线性变换

*定理 8*

设 $A = P D P^{-1}$ ，其中 $D$ 为 $n \times n$ （对角）矩阵，若以 $P$ 的列向量作为 $\mathbb{R}^n$ 的基（记作 $\mathcal{B}$ ），则 $D$ 是变换 $\mathbf{x} \mapsto A \mathbf{x}$ 的 $\mathcal{B}-$ 矩阵（即 $[A \mathbf{x}]_B = D [\mathbf{x}]_B$ ）。

> 在定理 8 中， $D$ 并不需要是对角矩阵，只要与 $A$ 相似即可。

设 $\mathbf{u} = [\mathbf{x}]_B$ ，则映射 $\mathbf{x} \mapsto A \mathbf{x}$ 和 $\mathbf{u} \mapsto D \mathbf{u}$ 定义的是相对不同基的同一种线性变换，如下图所示

![相似矩阵与线性变换](./assets/05-linear-transformation-and-similar-matrix.svg)

### 矩阵表示的相似性

对于 $\mathbb{R}^n \to \mathbb{R}^n$ 的线性变换 $T(\mathbf{x}) = A \mathbf{x}$

1. 若 $A$ 相似于 $C$ ，即 $A = P C P^{-1}$ ，则以 $P$ 的列向量作基（记作 $\mathcal{B}$ ），有 $[T]_B = P^{-1} A P = C$
2. 反之，若 $\mathcal{B}$ 是 $\mathbb{R}^n$ 的任意一个基，则 $[T]_B = P^{-1} A P$ ，其中 $P$ 的列向量构成的基就是 $\mathcal{B}$

因此，所有相似于 $A$ 的矩阵的集合与变换 $\mathbf{x} \mapsto A \mathbf{x}$ 的所有矩阵表示的集合是同一集合。

## 5.5 复特征值

### 复特征值和复特征向量

一个复数 $\lambda$ 满足 $\det (A - \lambda I) = 0$ 当且仅当在 $\mathbb{C}^n$ 中存在一个非零向量 $\mathbf{x}$ ，使得 $A \mathbf{x} = \lambda \mathbf{x}$ 。这样的 $\lambda$ 称为（复）特征值, $\mathbf{x}$ 称为对应于 $\lambda$ 的（复）特征向量。

### 复向量的实部与虚部

设 $\mathbf{x} \in \mathbb{C}^n$ ，则向量 $\Re \mathbf{x}$ 和 $\Im \mathbf{x}$ 称为复向量 $\mathbf{x}$ 的*实部*和*虚部*，分别由 $\mathbf{x}$ 的分量的实部和虚部组成。例如，设

$$\mathbf{x} = \begin{bmatrix*}
   a + b\imath \\
   c + d\imath
\end{bmatrix*} = \begin{bmatrix*}
   a \\
   c
\end{bmatrix*} + \begin{bmatrix*}
   b \\
   d
\end{bmatrix*} \imath$$

则

$$\Re \mathbf{x} = \begin{bmatrix*}
   a \\
   c
\end{bmatrix*}, \; \Im \mathbf{x} = \begin{bmatrix*}
   b \\
   d
\end{bmatrix*}$$

设 $\mathbf{x} \in \mathbb{C}^n$ ，则它的*共轭向量* $\overline{\mathbf{x}}$ 也属于 $\mathbb{C}^n$ ，其分量是 $\mathbf{x}$ 中对应分量的共轭复数。接上例，有

$$\overline{\mathbf{x}} = \begin{bmatrix*}
   a - b\imath \\
   c - d\imath
\end{bmatrix*} = \begin{bmatrix*}
   a \\
   c
\end{bmatrix*} - \begin{bmatrix*}
   b \\
   d
\end{bmatrix*} \imath$$

*共轭运算的性质*

复数的共轭运算性质对于复矩阵（可能含有复数元素的矩阵）也成立：若有复矩阵 $A, B$ ，复向量 $\mathbf{x}$ 及复数 $c$ ，并且 $A, B, \mathbf{x}$ 的规格使以下运算都能成立，则

* $\overline{c \mathbf{x}} = \overline{c} \ \overline{\mathbf{x}}$
* $\overline{c A} = \overline{c} \ \overline{A}$
* $\overline{A \mathbf{x}} = \overline{A} \ \overline{\mathbf{x}}$
* $\overline{A B} = \overline{A} \ \overline{B}$

### 有复特征值的实矩阵

*成对出现的复特征值*

设 $A$ 为 $n \times n$ 的实矩阵， $\lambda$ 是 $A$ 的特征值， $\mathbf{x}$ 是对应的特征向量，则

$$A \overline{\mathbf{x}} = \overline{A \mathbf{x}} = \overline{\lambda \mathbf{x}} = \overline{\lambda} \ \overline{\mathbf{x}}$$

即 $\overline{\lambda}$ 也是 $A$ 的特征值， $\overline{\mathbf{x}}$ 是对应的特征向量。

这表明，当 $A$ 是实矩阵时，它的复特征值 $\lambda = a + b \imath, \ b \ne 0$ 总是以共轭复数对出现。

*产生旋转的实矩阵*

设实矩阵 $C =
\begin{bmatrix*}[r]
a & -b \\
b & a
\end{bmatrix*}$ ，其中 $a, b$ 为实数且 b 不等于零，则 $C$ 的特征值 $\lambda = a \pm b \imath$ 。又设 $r = |\lambda| = \sqrt{a^2 + b^2}$ ， $\varphi$ 为复数 $a + b \imath$ 的辐角，则

$$C =
r \begin{bmatrix*}[r]
a / r & -b / r \\
b / r & a / r
\end{bmatrix*} =
\begin{bmatrix*}[r]
r & 0 \\
0 & r \\
\end{bmatrix*}
\begin{bmatrix*}[r]
\cos \varphi & - \sin \varphi \\
\sin \varphi & \cos \varphi \\
\end{bmatrix*}$$

因此 $\mathbf{x} \mapsto C \mathbf{x}$ 的效果是把向量 $\mathbf{x}$ 逆时针旋转 $\varphi$ 再倍乘 $r$ 。

以下定理说明*任何含有复特征值的 $2 \times 2$ 实矩阵都会产生旋转*

*定理 9*

设 $A$ 是 $2 \times 2$ 实矩阵，有复特征值 $\lambda = a - b \imath$ 及对应的复特征向量 $\mathbf{v}$ ，则

$$A = P C P^{-1}$$

其中 $P = [\Re \mathbf{v} \ \Im \mathbf{v}]$ ，
$C = \begin{bmatrix*}[r]
a & -b \\
b & a
\end{bmatrix*}$

> 由前面的分析， $C$ 会产生旋转，又 $A$ 相似于 $C$ ，结合之前的定理 8 可知， $A$ 、 $C$ 是相对于不同基的同一种线性变换。同时，注意到 $A$ 、 $C$ 有相同的特征值，这是因为 $A$ 、 $C$ 相似，之前的定理 4 证明了这一点。

此外，更高维度的矩阵也可以产生旋转。

## 5.6 离散动力系统

### 差分方程

对于差分方程 $\mathbf{x}_{k + 1} = A \mathbf{x}_k$ ，若 $n \times n$ 矩阵 $A$ 可对角化，有 $n$ 个线性无关的特征向量 $\mathbf{v}_1, \dots, \mathbf{v}_n$ 和对应的特征值 $\lambda_1, \dots, \lambda_n$ ，则任一初始向量 $\mathbf{x}_0$ 可表示为

$$\mathbf{x}_0 = c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n$$

那么

$$\begin{align*}
   \mathbf{x}_1 &= A \mathbf{x}_0 &= c_1 \lambda_1 \mathbf{v}_1 + \dots + c_n \lambda_n \mathbf{v}_n \\
   \vdots \\
   \mathbf{x}_k &= A \mathbf{x}_{k - 1} &= c_1 \lambda_1^k \mathbf{v}_1 + \dots + c_n \lambda_n^k \mathbf{v}_n
\end{align*}$$

当 $k \to \infty$ 时，据此可知由该差分方程描述的动力系统的长期行为。

> 实际上，
>
> $$\begin{align*}
   \mathbf{x}_0 &= P [\mathbf{x}_0]_B \\
   \mathbf{x}_k &= P D^k [\mathbf{x}_0]_B
\end{align*}$$
>
> 即
>
> $$\begin{align*}
   [\mathbf{x}_0]_B &= P^{-1} \mathbf{x}_0 \\
   [\mathbf{x}_k]_B &= D^k [\mathbf{x}_0]_B
\end{align*}$$
> 其中 $P = [\mathbf{v}_1 \mathbf{v}_2 \dots \mathbf{v}_n]$ ， $D = \begin{bmatrix*}
\lambda_1 & 0         & \dots  & 0         \\
0         & \lambda_2 &        & \vdots    \\
\vdots    &           & \ddots & 0         \\
0         & \dots     & 0      & \lambda_n \\
\end{bmatrix*}$

### 变量代换

对于差分方程 $\mathbf{x}_{k + 1} = A \mathbf{x}_k$ ，若 $n \times n$ 矩阵 $A$ 可对角化，有 $n$ 个线性无关的特征向量 $\mathbf{v}_1, \dots, \mathbf{v}_n$ 和对应的特征值 $\lambda_1, \dots, \lambda_n$，以这些特征向量为 $\mathbb{R}^n$ 的基，并设 $P = [\mathbf{v}_1 \ \dots \ \mathbf{v}_n]$ ， $D$ 是对角线上元素为对应特征值的对角矩阵。设

$$\mathbf{y} = P^{-1} \mathbf{x}$$

则

$$\mathbf{y}_{k + 1} = D \mathbf{y}_k$$

若把 $\mathbf{y}_k$ 记作 $\mathbf{y}(k)$ ，并用 $y_1(k), \dots, y_n(k)$ 表示其分量，则

$$\begin{bmatrix*}
y_1(k + 1) \\
y_2(k + 1) \\
\vdots     \\
y_n(k + 1) \\
\end{bmatrix*} =
\begin{bmatrix*}
\lambda_1 & 0         & \dots  & 0         \\
0         & \lambda_2 &        & \vdots    \\
\vdots    &           & \ddots & 0         \\
0         & \dots     & 0      & \lambda_n \\
\end{bmatrix*}
\begin{bmatrix*}
y_1(k) \\
y_2(k) \\
\vdots     \\
y_n(k) \\
\end{bmatrix*}$$

即

$$y_i(k + 1) = \lambda_i y_i(k), \quad i = 1, \dots, n$$

可见，从 $\mathbf{x}_k$ 到 $\mathbf{y}_k$ 的变量代换解耦了差分方程系统，使得 $y_i(k)$ 的变化不受其他分量 $y_j(k), \quad j \ne i$ 的影响。

> $\mathbf{y} = P^{-1} \mathbf{x}$ 实际上是一种坐标变换。

## 5.7 微分方程中的应用

（略）

## 5.8 特征值的迭代估计

（略）

## 小结

本章以矩阵的特征值与特征向量为基础，介绍了矩阵对角化（ $A = PDP^{-1}$ ）及其在离散动力系统等方面的应用；本章还介绍了相似矩阵（ $A = PCP^{-1}$ ）与 $\mathbb{R}^n$ 上的线性变换的关系。这些概念之间的关系如下

![特征值与特征向量](./assets/05-relations-a.svg)
