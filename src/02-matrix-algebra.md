# 2 矩阵代数

## 2.1 矩阵运算

### 矩阵和与标量乘法

*定理 1*

若矩阵 $A, B, C$ 具有相同的行数与列数， $r,s$ 是数，则

* $A + B = B + A$
* $(A + B) + C = A + (B + C)$
* $r(A + B) = rA + rB$
* $(r + s)A = rA + sA$
* $r(sA) = (rs)A$

### 矩阵乘法

#### 矩阵乘法的定义

若 $A$ 是 $m \times n$ 矩阵， $B$ 是 $n \times p$ 矩阵， $B$ 的列是 $\mathbf{b}_1,\dots,\mathbf{b}_p$ ，则乘积 $AB$ 是 $m \times p$ 矩阵，它的各列是 $A\mathbf{b}_1,\dots,A\mathbf{b}_p$ ，即

$$AB = A[\mathbf{b}_1 \; \mathbf{b}_2 \; \dots \;\mathbf{b}_p] = [A\mathbf{b}_1 \; A\mathbf{b}_2 \; \dots \; A\mathbf{b}_p]$$

即： $AB$ 的每一列都是 $A$ 的各列的线性组合，以 $B$ 的对应列的元素为权。

#### 矩阵乘法与线性变换

矩阵乘法对应于*线性变换的复合*，即

$$A(B\mathbf{x}) = (AB)\mathbf{x}$$

因为

$$B\mathbf{x} = x_1\mathbf{b}_1 + \dots + x_p\mathbf{b}_p$$

由线性变换的性质，有

$$\begin{align*}
  A(B\mathbf{x}) &= A(x_1\mathbf{b}_1 + \dots + x_p\mathbf{b}_p) \\
  &= A(x_1\mathbf{b}_1) + \dots + A(x_p\mathbf{b}_p) \\
  &= x_1 A \mathbf{b}_1 + \dots + x_p A \mathbf{b}_p \\
  &= [A\mathbf{b}_1 \; A\mathbf{b}_2 \; \dots \; A\mathbf{b}_p]\mathbf{x} = AB\mathbf{x}
\end{align*}$$

#### 矩阵乘法的行列法则

若乘积 $AB$ 有定义，则 $AB$ 的 $i$ 行 $j$ 列元素 $(AB)_{ij}$ 是 $A$ 的第 $i$ 行与 $B$ 的第 $j$ 列对应元素乘积之和。设 $A$ 为 $m \times n$ 矩阵，则

$$(AB)_{ij} = \sum_{k = 1}^n a_{ik} b_{kj}$$

若用 $\mathrm{row}_i(A)$ 表示矩阵 $A$ 的第 $i$ 行，则

$$\mathrm{row}_i(AB) = (\mathrm{row}_i(A))B$$

#### 矩阵乘法的性质

*定理 2*

设 $A$ 为 $m \times n$ 矩阵，矩阵 $B, C$ 的大小使以下运算有定义， $r$ 是数，则

* $A(BC) = (AB)C$
* $A(B + C) = AB + AC$
* $(B + C)A = BA + CA$
* $r(AB) = (rA)B = A(rB)$
* $A = I_m A = A I_n$

注意：在*一般情况下*，

* $AB \ne BA$
* $AB = AC$ 不能得出 $B = C$
* $AB = 0$ 不能得出 $A = 0$ 或 $B = 0$

### 矩阵乘幂

若 $A$ 是 $n \times n$ 矩阵， $k$ 是正整数，则 $A^k$ 表示 $k$ 个 $A$ 的乘积。
$A^0$ 被定义为单位矩阵 $I_n$ 。

### 矩阵转置

设 $A$ 是 $m \times n$ 矩阵，则 $A$ 的*转置*是一个 $n \times m$ 矩阵，用 $A^T$ 表示，它的列由 $A$ 的对应行构成。

*定理 3*

设 $A, B$ 表示矩阵，它们的大小使下列运算有定义， $r$ 是数，则

* $(A^T)^T = A$
* $(A + B)^T = A^T + B^T$
* $(rA)^T = r A^T$
* $(AB)^T = B^T A^T$

## 2.2 矩阵的逆

### 矩阵的逆的定义

一个 $n \times n$ 矩阵 $A$ 是*可逆*的，若存在一个 $n \times n$ 矩阵 $C$ 使得

$$CA = I_n \text{ 且 } AC = I_n$$

这时称 $C$ 是 $A$ 的逆。

若 $A$ 可逆，则它的逆是唯一的，记作 $A^{-1}$

不可逆矩阵称为*奇异矩阵*，可逆矩阵称为*非奇异矩阵*。

### 矩阵的逆的性质

*定理 4*

设 $A = \begin{bmatrix*}
a & b \\
c & d \\
\end{bmatrix*}$ ，若 $ad - bc \ne 0$ ，则 $A$ 可逆，且

$$A^{-1} = \frac{1}{ad - bc}
\begin{bmatrix*}[r]
d & -b \\
-c & a \\
\end{bmatrix*}$$

若 $ad - bc = 0$ ，则 $A$ 不可逆。

数 $ad - bc$ 称为 $A$ 的*行列式*，记作

$$\det A = ad - bc$$

*定理 5*

若 $A$ 是 $n \times n$ 的可逆矩阵，则对任意 $\mathbf{b} \in \mathbb{R}^n$ ，方程 $A\mathbf{x} = \mathbf{b}$ 有唯一解 $\mathbf{x} = A^{-1}\mathbf{b}$

*定理 6*

* 若矩阵 $A$ 可逆，则 $A^{-1}$ 也可逆且 $(A^{-1})^{-1} = A$
* 若 $A, B$ 都是 $n \times n$ 可逆矩阵，则 $AB$ 也可以逆，且 $(AB)^{-1} = B^{-1} A^{-1}$
* 若矩阵 $A$ 可逆，则 $A^T$ 也可逆，且 $(A^T)^{-1} = (A^{-1})^T$

### 初等矩阵

把单位矩阵进行一次初等行变换，就得到*初等矩阵*。

若对 $m \times n$ 矩阵 $A$ 进行某种初等行变换，所得矩阵可写成 $EA$ ，其中 $E$ 是 $m \times m$ 矩阵，它是由 $I_m$ 进行同一行变换所得。

### 求逆算法

*定理 7*

$n \times n$ 矩阵 $A$ 是可逆的，当且仅当 $A$ 行等价于 $I_n$ ，这时，把 $A$ 化简为 $I_n$ 的一系列初等行变换同时把 $I_n$ 变成 $A^{-1}$ 。

由此得到求 $A^{-1}$ 的算法：

把增广矩阵 $[A \; I]$ 进行化简，若 $A$ 行等价于 $I$ ，则 $[A \; I]$ 行等价于 $[I \; A^{-1}]$ ，否则 $A$ 没有逆。

### 逆矩阵的另一种观点

若用 $\mathbf{e}_1, \dots, \mathbf{e}_n$ 表示 $I_n$ 各列，则把 $[A \; I]$ 行化简为 $[I \; A^{-1}]$ 的过程可看作解 $n$ 个方程组

$$A\mathbf{x}_1 = \mathbf{e}_1, \ \dots, \ A\mathbf{x}_n = \mathbf{e}_n$$

把这些方程组的增广列都放在 $A$ 的右边，构成增广矩阵

$$[A \; \mathbf{e}_1 \; \dots \; \mathbf{e}_n] = [A \; I]$$

由矩阵乘法的定义及 $AA^{-1} = I$ 可知 $A^{-1}$ 的列正是上面 $n$ 个方程组的解。

*一般地，矩阵-矩阵方程 $AX = B$ 可以用增广矩阵 $[A \; B]$ 来求解。*

## 2.3 可逆矩阵的特征

### 可逆矩阵定理

*定理 8*

若 $A$ 为 $n \times n$ 矩阵，则下列命题等价

1. $A$ 是可逆矩阵
2. $A$ 行等价于 $I_n$
3. $A$ 有 $n$ 个主元位置
4. 方程 $A\mathbf{x} = \mathbf{0}$ 仅有平凡解
5. $A$ 的各列线性无关
6. 线性变换 $\mathbf{x} \mapsto A\mathbf{x}$ 是一对一的
7. 对任意 $\mathbf{b} \in \mathbb{R}^n$ ，方程 $A\mathbf{x} = \mathbf{b}$ 至少有一个解
8. $A$ 的各列生成 $\mathbb{R}^n$
9. 线性变换 $\mathbf{x} \mapsto A\mathbf{x}$ 把 $\mathbb{R}^n$ 映上到 $\mathbb{R}^n$
10. 存在 $n \times n$ 矩阵 $C$ 使 $CA = I$
11. 存在 $n \times n$ 矩阵 $D$ 使 $AD = I$
12. $A^T$ 是可逆矩阵

由以上4、7可知，若 $A$ 可逆，则方程 $A\mathbf{x} = \mathbf{b}, \; \forall \mathbf{b} \in \mathbb{R}^n$ 有唯一解。

由以上10、11可知，若 $A, B$ 为方阵，且 $AB = I$ ，则 $A, B$ 互逆，即 $A^{-1} = B, \; B^{-1} = A$

### 可逆线性变换

线性变换 $T: \mathbb{R}^n \to \mathbb{R}^n$ 称为可逆的，若存在变换 $S: \mathbb{R}^n \to \mathbb{R}^n$ 使得

* $S(T(\mathbf{x})) = \mathbf{x}, \; \forall \mathbf{x} \in \mathbb{R}^n$
* $T(S(\mathbf{x})) = \mathbf{x}, \; \forall \mathbf{x} \in \mathbb{R}^n$

这时称 $S$ 是 $T$ 的逆，记作 $T^{-1}$

*定理 9*

设 $T: \mathbb{R}^n \to \mathbb{R}^n$ 为线性变换， $A$ 为 $T$ 的标准矩阵，则 $T$ 可逆当且仅当 $A$ 是可逆矩阵，这时由 $S(\mathbf{x}) = A^{-1} \mathbf{x}$ 定义的线性变换是 $T$ 的逆，且它是唯一的。

## 2.4 分块矩阵

### 分块矩阵的加法与标量乘法

（略）

### 分块矩阵的乘法

分块矩阵可以用通常的行列法则进行乘法运算，就如同每块都是数一样，只要对于乘积 $AB$ ， $A$ 的列分法与 $B$ 的行分法一致。

*定理 10* （ $AB$ 的列行展开）

若 $A$ 是 $m \times n$ 矩阵， $B$ 是 $n \times p$ 矩阵，则

$$\begin{align*}
  AB &= [\mathrm{col}_1(A) \; \dots \mathrm{col}_n(A)]
  \begin{bmatrix*}
    \mathrm{row}_1(B) \\
    \vdots \\
    \mathrm{row}_n(B)
  \end{bmatrix*} \\
  &= \mathrm{col}_1(A) \mathrm{row}_1(B) + \dots + \mathrm{col}_n(A)\mathrm{row}_n(B)
\end{align*}$$

定理 10 说明：若 $A$ 是 $m \times n$ 矩阵， $B$ 是 $n \times p$ 矩阵，则它们可以做如下的分块乘法

$$AB = [A_{m \times n_1} \; A_{m \times n_2}]
\begin{bmatrix*}
B_{n_1 \times p} \\
B_{n_2 \times p} \\
\end{bmatrix*}
= A_{m \times n_1} B_{n_1 \times p} + A_{m \times n_2} B_{n_2 \times p}$$

其中 $n_1 + n_2 = n$

#### 矩阵乘积的不同观点

分块矩阵的乘法给出了矩阵乘积的新观点，此前，矩阵乘积可以看作以下简单的分块情形

1. 用 $A$ 的列来定义 $A\mathbf{x}$
2.  $AB$ 的列定义
3. 计算 $AB$ 的行列法则
4.  $A$ 的行与 $B$ 的乘积作为 $AB$ 的行

设 $A$ 是 $m \times n$ 矩阵， $B$ 是 $n \times p$ 矩阵，

* 以上1、2说明，矩阵可做如下分块乘法

  $$AB = A_{m \times n} [B_{n \times p_1} \; B_{n \times p_2}] = [A_{m \times n} B_{n \times p_1} \; A_{m \times n} B_{n \times p_2}]$$

  其中 $p_1 + p_2 = p$

* 以上3、4说明，矩阵可做如下分块乘法

  $$AB = \begin{bmatrix*}
  A_{m_1 \times n} \\
  A_{m_2 \times n} \\
  \end{bmatrix*}
  B_{n \times p}
  = \begin{bmatrix*}
  A_{m_1 \times n} B_{n \times p} \\
  A_{m_2 \times n} B_{n \times p} \\
  \end{bmatrix*}$$

  其中 $m_1 + m_2 = m$

### 分块矩阵的逆

*分块对角矩阵*是一个分块矩阵，除主对角线上各分块外，其余全是零分块。这样的矩阵是可逆的当且仅当主对角线上各分块都是可逆的。

## 2.5 矩阵因式分解

矩阵的因式分解是把一个矩阵表示为两个或更多个矩阵的乘积，以便于计算或者其他应用。

### LU分解

（略）

## 2.6 列昂惕夫投入产出模型

（略）

## 2.7 计算机图形学中的应用

（略）

## 2.8 $\mathbb{R}^n$ 子空间

### 子空间的定义

$\mathbb{R}^n$ 的一个*子空间*是 $\mathbb{R}^n$ 的子集 $H$ ，它具有以下性质

1. 零向量属于 $H$
2. 对 $H$ 中的任意向量 $\mathbf{u}, \mathbf{v}$ ，向量 $\mathbf{u} + \mathbf{v}$ 属于 $H$
3. 对 $H$ 中的任意向量 $\mathbf{u}$ 和数 $c$ ，向量 $c \mathbf{u}$ 属于 $H$

由此， $\mathbb{R}^n$ 是它自身的子空间；仅含零向量的的集合称为*零子空间*。

#### 线性组合与子空间

若 $\mathbf{v}_1,\dots,\mathbf{v}_p \in \mathbb{R}^n$ ，则 $\mathbf{v}_1,\dots,\mathbf{v}_p$ 的所有线性组合是 $\mathbb{R}^n$ 的子空间。称 $\mathrm{Span}\{ \mathbf{v}_1,\dots,\mathbf{v}_p \}$ 为由 $\mathbf{v}_1,\dots,\mathbf{v}_p$ 生成（或张成）的子空间。

### 矩阵的列空间与零空间

矩阵 $A$ 的*列空间*是 $A$ 的各列的所有线性组合的集合，记作 $\mathrm{Col} \; A$

$m \times n$ 矩阵的列空间是 $\mathbb{R}^m$ 的子空间。

矩阵 $A$ 的*零空间*是齐次方程 $A\mathbf{x} = \mathbf{0}$ 的解集，记作 $\mathrm{Nul} \; A$

*定理 12*

$m \times n$ 矩阵的零空间是 $\mathbb{R}^n$ 的子空间。

### 子空间的基

$\mathbb{R}^n$ 子空间 $H$ 的一个*基*是 $H$ 中一个线性无关集，它生成 $H$

单位矩阵 $I_n$ 的各列的集合 $\{ \mathbf{e}_1, \dots, \mathbf{e}_n \}$ 称为 $\mathbb{R}^n$ 的标准基。

#### 矩阵的零空间的基

把方程 $A\mathbf{x} = \mathbf{0}$ 的解集用参数向量形式表示为

$$w_1 \mathbf{v}_1 + w_2 \mathbf{v}_2 + \dots$$

则向量集合 $\{ \mathbf{v}_1, \mathbf{v}_2, \dots \}$ 即矩阵 $A$ 的零空间的基。

#### 矩阵的列空间的基

*定理 13*

矩阵 $A$ 的主元列构成 $A$ 的列空间的基。

## 2.9 维数与秩

### 坐标系

设 $\mathcal{B} = \{ \mathbf{b}_1, \dots, \mathbf{b}_p \}$ 是子空间 $H$ 的一个基，对 $H$ 中的向量 $\mathbf{x}$ ，相对于基 $\mathcal{B}$ 的*坐标*是使 $\mathbf{x} = c_1 \mathbf{b}_1 + \dots + c_p \mathbf{b}_p$ 成立的权 $c_1, \dots, c_p$ 。 $\mathbb{R}^p$ 中的向量

$$[\mathbf{x}]_{\mathcal{B}} =
\begin{bmatrix*}
c_1 \\
\vdots \\
c_p
\end{bmatrix*}$$

称为 $\mathbf{x}$（相对于 $\mathcal{B}$ ）的坐标向量，或 $\mathbf{x}$ 的 $\mathcal{B}-$ 坐标向量。

### 子空间的维数

非零子空间 $H$ 的*维数*是 $H$ 的任意一个基的向量个数，记作 $\dim H$ 。零子空间的维数定义为零（因为零子空间无基）。

矩阵 $A$ 的秩是 $A$ 的列空间的维数，记作 $\mathrm{rank} \, A$ ，即

$$\mathrm{rank} \, A = \dim (\mathrm{Col} \, A)$$

*定理 14* （秩定理）

若矩阵 $A$ 有 $n$ 列，则

$$\dim (\mathrm{Col} \, A) + \dim (\mathrm{Nul} \, A) = n$$

这是因为 $\dim (\mathrm{Col} \, A)$ 对应着 $A$ 的主元列数， $\dim (\mathrm{Nul} \, A)$ 对应着 $A$ 的非主元列数。

*定理 15* （基定理）

若 $H$ 是 $\mathbb{R}^n$ 的 $p$ 维子空间， $H$ 中任意由 $p$ 个元素组成的线性无关集构成 $H$ 的一个基；并且 $H$ 中任何生成 $H$ 的 $p$ 个向量的集合也是 $H$ 的一个基。

### 秩与可逆矩阵

*可逆矩阵定理（续）*

若 $A$ 是一个 $n \times n$ 矩阵，则下列各个命题与 $A$ 是可逆矩阵的命题等价

* $A$ 的列向量构成 $\mathbb{R}^n$ 的一个基
* $\mathrm{Col} \, A = \mathbb{R}^n$
* $\dim \mathrm{Col} \, A = n$
* $\mathrm{rank} \, A = n$
* $\mathrm{Nul} \, A = \{ \mathbf{0} \}$
* $\dim \mathrm{Nul} \, A = 0$
