# 3 行列式

## 3.1 行列式介绍

*行列式的定义*

对 $n \times n$ 矩阵 $A$ ，其*行列式*（记作 $\det A$ ）按如下方式定义/计算：

当 $n = 1$ 时，设 $A = [a_{11}]$ ，则 $det A = a_{11}$

当 $n > 1$ 时，

$\displaystyle \det A = \sum_{k = 1}^n a_{1k} C_{1k}$

这个公式称为按 $A$ 的*第一行的余因子展开式*。其中，

$C_{ij} = (-1)^{i + j} \det A_{ij}$

称为 $A$ 的 $(i, j)$ *余因子*。其中，

$A_{ij}$ 表示删除 $A$ 中第 $i$ 行和第 $j$ 列而得到的子矩阵。

*定理 1*

方阵 $A$ 的行列式可按任意行或列的余因子展开式计算，结果相同。

*定理 2*

若 $A$ 为三角矩阵，则 $\det A$ 等于 $A$ 主对角线上元素的乘积。

## 3.2 行列式的性质

*定理 3*（行变换）

设 $A$ 是一个方阵

* 若 $A$ 的某一行倍加到另一行得到矩阵 $B$ ，则 $\det B = \det A$
* 若 $A$ 的两行互换得到矩阵 $B$ ，则 $\det B = - \det A$
* 若 $A$ 的某一行倍乘 $k$ 得到矩阵 $B$ ，则 $\det B = k \det A$

*定理 4*

方阵 $A$ 可逆当且仅当 $\det A \ne 0$

*定理 5*（列变换）

若 $A$ 为方阵，则 $\det A = \det A^{T}$

该定理表明，对矩阵 $A$ 做与定理 3类似的“列变换”（列倍加、倍乘和交换）时，有相同结论。

*定理 6*（乘法性质）

若 $A$ 和 $B$ 都是 $n \times n$ 矩阵，则 $\det AB = (\det A)(\det B)$

## 3.3 克拉默法则、体积和线性变换

### 克拉默法则

*定理 7*（克拉默法则）

设 $A$ 是一个 $n \times n$ 可逆矩阵，对 $\mathbb{R}^n$ 中任意向量 $\mathbf{b}$ ，方程 $A \mathbf{x} = \mathbf{b}$ 的唯一解可由下式给出

$\displaystyle x_i = \frac{\det A_i(\mathbf{b})}{\det A}, \quad i = 1, \dots, n$

其中， $A_i(\mathbf{b})$ 表示 $A$ 的第 $i$ 列由向量 $\mathbf{b}$ 替换得到的矩阵。

### 逆矩阵公式

*定理 8*（逆矩阵公式）

设 $A$ 是一个 $n \times n$ 可逆矩阵，则

$\displaystyle A^{-1} = \frac{\mathrm{adj} \ A}{\det A}$

其中，

$\mathrm{adj} \ A =
\begin{bmatrix*}
C_{11} & C_{21} & \dots & C_{n1} \\
C_{12} & C_{22} & \dots & C_{n2} \\
\vdots & \vdots &       & \vdots \\
C_{1n} & C_{2n} & \dots & C_{nn}
\end{bmatrix*}$

称为 $A$ 的*伴随矩阵*。

### 行列式的几何意义

*定理 9*

若 $A$ 是一个 $2 \times 2$ 矩阵，则由 $A$ 的列向量确定的平行四边形的面积为 $|\det A|$ ；若 $A$ 是一个 $3 \times 3$ 矩阵，则由 $A$ 的列向量确定的平行六面体的体积为 $|\det A|$ 。

### 线性变换

*定理 10*

设 $T: \mathbb{R}^2 \to \mathbb{R}^2$ 是一个由 $2 \times 2$ 矩阵 $A$ 确定的线性变换， $S$ 是 $\mathbb{R}^2$ 中一个平行四边形，则

$\{ T(S) \text{的面积} \} = |\det A| \cdot \{ \text{S的面积} \}$

设 $T: \mathbb{R}^3 \to \mathbb{R}^3$ 是一个由 $3 \times 3$ 矩阵 $A$ 确定的线性变换， $V$ 是 $\mathbb{R}^3$ 中一个平行六面体，则

$\{ T(V) \text{的体积} \} = |\det A| \cdot \{ \text{V的体积} \}$
