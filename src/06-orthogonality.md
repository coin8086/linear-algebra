# 6 正交性和最小二乘法

- [6 正交性和最小二乘法](#6-正交性和最小二乘法)
  - [6.1 内积、长度和正交性](#61-内积长度和正交性)
    - [向量内积](#向量内积)
    - [向量的长度](#向量的长度)
    - [$\\mathbb{R}^n$ 中的距离](#mathbbrn-中的距离)
    - [正交向量](#正交向量)
    - [正交补](#正交补)
    - [$\\mathbb{R}^3$ 和 $\\mathbb{R}^2$ 中的角度](#mathbbr3-和-mathbbr2-中的角度)
  - [6.2 正交集](#62-正交集)
    - [正交集](#正交集)
    - [正交投影](#正交投影)
    - [单位正交集](#单位正交集)
  - [6.3 正交投影](#63-正交投影)
    - [正交投影的方法](#正交投影的方法)
    - [正交投影的性质](#正交投影的性质)
  - [6.4 格拉姆-施密特方法](#64-格拉姆-施密特方法)
    - [构造正交基](#构造正交基)
    - [矩阵的 QR 分解](#矩阵的-qr-分解)
  - [6.5 最小二乘问题](#65-最小二乘问题)
    - [最小二乘解的定义](#最小二乘解的定义)
    - [一般最小二乘问题的解](#一般最小二乘问题的解)
    - [特殊情形下最小二乘问题的解](#特殊情形下最小二乘问题的解)
  - [6.6 线性模型中的应用](#66-线性模型中的应用)
    - [最小二乘直线](#最小二乘直线)
    - [一般线性模型](#一般线性模型)
    - [曲线的最小二乘拟合](#曲线的最小二乘拟合)
    - [多重回归](#多重回归)
  - [6.7 内积空间](#67-内积空间)
    - [内积空间的定义](#内积空间的定义)
    - [长度、距离和正交性](#长度距离和正交性)
    - [格拉姆-施密特方法](#格拉姆-施密特方法)
    - [内积空间的最佳逼近](#内积空间的最佳逼近)
    - [两个不等式](#两个不等式)
    - [C\[a, b\] 上的内积](#ca-b-上的内积)
  - [6.8 内积空间的应用](#68-内积空间的应用)
    - [加权最小二乘法](#加权最小二乘法)
    - [数据趋势分析](#数据趋势分析)
    - [傅立叶级数](#傅立叶级数)

## 6.1 内积、长度和正交性

### 向量内积

*向量内积*

若 $\mathbf{u}$ 、 $\mathbf{v}$ 是 $\mathbb{R}^n$ 中的向量，将其视作 $n \times 1$ 矩阵，则数 $\mathbf{u}^T \mathbf{v}$ 称为 $\mathbf{u}$ 与 $\mathbf{v}$ 的*内积*，记作 $\mathbf{u} \cdot \mathbf{v}$ 。

*定理 1*

设 $\mathbf{u}$ 、 $\mathbf{v}$ 和 $\mathbf{w}$ 是 $\mathbb{R}^n$ 中的向量， $c$ 是一个数，则

1. $\mathbf{u} \cdot \mathbf{v} = \mathbf{v} \cdot \mathbf{u}$
2. $(\mathbf{u} + \mathbf{v}) \cdot \mathbf{w} = \mathbf{u} \cdot \mathbf{w} + \mathbf{v} \cdot \mathbf{w}$
3. $(c \mathbf{u}) \cdot \mathbf{v} = c (\mathbf{u} \cdot \mathbf{v})$
4. $\mathbf{u} \cdot \mathbf{u} \ge 0$ 且 $\mathbf{u} \cdot \mathbf{u} = 0 \iff \mathbf{u} = \mathbf{0}$

由以上第2、3点可得

$(c_1 \mathbf{u}_1 + \dots c_p \mathbf{u}_p) \cdot \mathbf{w} = c_1 (\mathbf{u}_1 \cdot \mathbf{w}) + \dots + c_p (\mathbf{u}_p \cdot \mathbf{w})$

### 向量的长度

向量 $\mathbf{v}$ 的*长度*（或*范数*）记作 $\| \mathbf{v} \|$ ，定义为

$\| \mathbf{v} \| = \sqrt{\mathbf{v} \cdot \mathbf{v}}$

长度为 1 的向量称为*单位向量*。

### $\mathbb{R}^n$ 中的距离

$\mathbb{R}^n$ 中向量 $\mathbf{u}$ 和 $\mathbf{v}$ 之间的距离记作 $\mathrm{dist}(\mathbf{u}, \mathbf{v})$ ，表示向量 $\mathbf{u} - \mathbf{v}$ 的长度，即

$\mathrm{dist}(\mathbf{u}, \mathbf{v}) = \| \mathbf{u} - \mathbf{v} \|$

### 正交向量

若 $\mathbf{u} \cdot \mathbf{v} = 0$ ，则称向量 $\mathbf{u}$ 和 $\mathbf{v}$ 是（相互）*正交的*。

*定理 2（毕达哥拉斯/勾股定理）*

向量 $\mathbf{u}$ 和 $\mathbf{v}$ 正交的充要条件是 $\| \mathbf{u} + \mathbf{v} \|^2 = \| \mathbf{u} \|^2 + \| \mathbf{v} \|^2$ 。

### 正交补

若向量 $\mathbf{u}$ 与 $\mathbb{R}^n$ 子空间 $W$ 的任意向量都正交，则称 $\mathbf{u}$ 正交于 $W$ 。与子空间 $W$ 正交的向量的全体组成的集合称为 $W$ 的*正交补*，记作 $W^{\perp}$ 。

$W^{\perp}$ 的一些性质：

1. 向量 $\mathbf{u}$ 属于 $W^{\perp}$ 的充要条件是 $\mathbf{u}$ 与 $W$ 的生成集中任一向量都正交。
2. $W^{\perp}$ 是 $\mathbb{R}^n$ 的子空间。
3. 若 $\mathbf{u} \in W \text{且} \mathbf{u} \in W^{\perp}$ ，则 $\mathbf{u} = \mathbf{0}$ 。

*定理 3*

若 $A$ 是 $m \times n$ 矩阵，则

* $(\mathrm{Row} \ A)^{\perp} = \mathrm{Nul} \ A$
* $(\mathrm{Col} \ A)^{\perp} = \mathrm{Nul} \ A^T$

证明：设 $A =
\begin{bmatrix*}
r_1 \\
\vdots \\
r_m
\end{bmatrix*}$ ，则 $A \mathbf{x} =
\begin{bmatrix*}
r_1 \mathbf{x} \\
\vdots \\
r_m \mathbf{x}
\end{bmatrix*}$ ，

$A \mathbf{x} = \mathbf{0} \implies r_i \mathbf{x} = 0, \quad i = 1, 2, \dots, m$

即 $\mathbf{x}$ 正交于 $\mathrm{Row} \ A$ 生成集中的每一个向量。

### $\mathbb{R}^3$ 和 $\mathbb{R}^2$ 中的角度

若 $\mathbf{u}$ 、 $\mathbf{v}$ 是 $\mathbb{R}^2$ 或 $\mathbb{R}^3$ 中的向量，它们的夹角为 $\theta$ ，则

$\mathbf{u} \cdot \mathbf{v} = \|\mathbf{u}\| \|\mathbf{v}\| \cos \theta$

## 6.2 正交集

### 正交集

*正交集*

向量集合 $\{ \mathbf{u}_1, \dots, \mathbf{u}_p \}$ 称为*正交集*，若集合中任意两个不同的向量都正交。

*定理 4*

若 $S = \{ \mathbf{u}_1, \dots, \mathbf{u}_p \}$ 是由非零向量构成的正交集，则 $S$ 是线性无关集，因此构成 $S$ 所生成子空间的一个基。

*正交基*

子空间 $W$ 的一个*正交基*是 $W$ 的一个基，也是正交集。

*定理 5*

设 $\{ \mathbf{u}_1, \dots, \mathbf{u}_p \}$ 是 $\mathbb{R}^n$ 子空间 $W$ 的正交基，则对 $W$ 中的向量 $\mathbf{y}$ ，线性组合 $\mathbf{y} = c_1 \mathbf{u}_1 + \dots + c_p \mathbf{u}_p$ 中的权 $\displaystyle c_i = \frac{\mathbf{y} \cdot \mathbf{u}_i}{\mathbf{u}_i \cdot \mathbf{u}_i}, \quad i = 1, \dots, p$ 。

该定理说明正交基比非正交基优越：其线性组合的权较易计算。

### 正交投影

对向量空间 $\mathbb{R}^n$ 中的非零向量 $\mathbf{u}$ ，若 $\mathbf{y} \in \mathbb{R}^n$ ，则 $\mathbf{y}$ 可分解为两个相互正交的向量 $\hat{\mathbf{y}}$ 和 $\mathbf{z}$ ，其中 $\displaystyle \hat{\mathbf{y}} = \frac{\mathbf{y} \cdot \mathbf{u}}{\mathbf{u} \cdot \mathbf{u}} \mathbf{u}$ ， $\mathbf{z} = \mathbf{y} - \hat{\mathbf{y}}$ 。向量 $\hat{\mathbf{y}}$ 称为 $\mathbf{y}$ 在 $\mathbf{u}$ 上的*正交投影*，向量 $\mathbf{z}$ 称为 $\mathbf{y}$ 与 $\mathbf{u}$ 正交的分量。

若用 $c \mathbf{u}$ 代替 $\mathbf{u}$ ，则 $\mathbf{y}$ 在 $\mathbf{u}$ 上的正交投影 $\hat{\mathbf{y}}$ 不变，因此该投影由 $\mathbf{u}$ 生成的子空间 $L$ 所确定，有时也记作 $\mathrm{proj}_L \ \mathbf{y}$ ，即

$\displaystyle \hat{\mathbf{y}} = \mathrm{proj}_L \ \mathbf{y} = \frac{\mathbf{y} \cdot \mathbf{u}}{\mathbf{u} \cdot \mathbf{u}} \mathbf{u}$

### 单位正交集

*单位正交集*

若正交集 $\{ \mathbf{u}_1, \dots, \mathbf{u}_p \}$ 的向量都是单位向量，则称该集合为*单位正交集*。

*定理 6*

一个 $m \times n$ 矩阵 $U$ 具有单位正交列向量的充要条件是 $U^T U = I$ 。

*定理 7*

若 $U$ 是一个具有单位正交列向量的 $m \times n$ 矩阵， $\mathbf{x}, \mathbf{y} \in \mathbb{R}^n$ ，则

1. $\| U \mathbf{x} \| = \| \mathbf{x} \|$
2. $(U \mathbf{x}) \cdot (U \mathbf{y}) = \mathbf{x} \cdot \mathbf{y}$
3. $(U \mathbf{x}) \cdot (U \mathbf{y}) = 0$ 的充要条件是 $\mathbf{x} \cdot \mathbf{y} = 0$

该定理说明，线性映射 $\mathbf{x} \mapsto U \mathbf{x}$ 保持长度和正交性。

*正交矩阵*

一个*正交矩阵*是一个可逆方阵 $U$ ，且 $U^{-1} = U^T$ 。显然，这样的矩阵具有单位正交列。

## 6.3 正交投影

### 正交投影的方法

*定理 8（正交分解定理）*

若 $W$ 是 $\mathbb{R}^n$ 的一个子空间，则 $\mathbb{R}^n$ 中每一个向量 $\mathbf{y}$ 可唯一表示为

$\mathbf{y} = \hat{\mathbf{y}} + \mathbf{z}$

其中 $\hat{\mathbf{y}} \in W, \; \mathbf{z} \in W^{\perp}$ 。若 $\{ \mathbf{u}_1, \dots, \mathbf{u}_p \}$ 是 $W$ 的任意正交基，则

$\displaystyle \hat{\mathbf{y}} = \frac{\mathbf{y} \cdot \mathbf{u}_1}{\mathbf{u}_1 \cdot \mathbf{u}_1} \mathbf{u}_1 + \dots + \frac{\mathbf{y} \cdot \mathbf{u}_p}{\mathbf{u}_p \cdot \mathbf{u}_p} \mathbf{u}_p$

以上， $\hat{\mathbf{y}}$ 称为 $\mathbf{y}$ 在 $W$ 上的正交投影，记作 $\mathrm{proj}_W \ \mathbf{y}$

### 正交投影的性质

*定理 9（最佳逼近定理）*

若 $W$ 是 $\mathbb{R}^n$ 的一个子空间， $\mathbf{y}$ 是 $\mathbb{R}^n$ 中的任意向量， $\hat{\mathbf{y}}$ 是 $\mathbf{y}$ 在 $W$ 上的正交投影，则 $\hat{\mathbf{y}}$ 是 $W$ 中最接近 $\mathbf{y}$ 的点，即

$\| \mathbf{y} - \hat{\mathbf{y}} \| < \| \mathbf{y} - \mathbf{v} \|$

对任意 $\mathbf{v} \in W$ 且 $\mathbf{v} \ne \hat{\mathbf{y}}$ 成立。

*定理 10（在单位正交基上的投影）*

若 $\{ \mathbf{u}_1, \dots, \mathbf{u}_p \}$ 是 $\mathbb{R}^n$ 中子空间 $W$ 的单位正交基， $\mathbf{y} \in \mathbb{R}^n$ ，则

$\mathrm{proj}_W \ \mathbf{y} = (\mathbf{y} \cdot \mathbf{u}_1) \mathbf{u}_1 + \dots (\mathbf{y} \cdot \mathbf{u}_p) \mathbf{u}_p$

若 $U = [\mathbf{u}_1 \dots \mathbf{u}_p]$ ，则

$\mathrm{proj}_W \ \mathbf{y} = U U^T \mathbf{y}$

## 6.4 格拉姆-施密特方法

### 构造正交基

*定理 11（格拉姆-施密特方法）*

设 $\{ \mathbf{x}_1, \dots, \mathbf{x}_p \}$ 是 $\mathbb{R}^n$ 的子空间 $W$ 的任意一个基，定义

$\mathbf{v}_1 = \mathbf{x}_1$

$\displaystyle \mathbf{v}_2 = \mathbf{x}_2 - \frac{\mathbf{x}_2 \cdot \mathbf{v}_1}{\mathbf{v}_1 \cdot \mathbf{v}_1} \mathbf{v}_1$

$\vdots$

$\displaystyle \mathbf{v}_p = \mathbf{x}_p - \frac{\mathbf{x}_p \cdot \mathbf{v}_1}{\mathbf{v}_1 \cdot \mathbf{v}_1} \mathbf{v}_1 - \frac{\mathbf{x}_p \cdot \mathbf{v}_2}{\mathbf{v}_2 \cdot \mathbf{v}_2} \mathbf{v}_2 - \dots - \frac{\mathbf{x}_p \cdot \mathbf{v}_{p - 1}}{\mathbf{v}_{p - 1} \cdot \mathbf{v}_{p - 1}} \mathbf{v}_{p - 1}$

则 $\{ \mathbf{v}_1, \dots, \mathbf{v}_p \}$ 是 $W$ 的一个正交基，且

$\mathrm{Span} \{ \mathbf{v}_1, \dots, \mathbf{v}_k \} = \mathrm{Span} \{ \mathbf{x}_1, \dots, \mathbf{x}_k \}, \quad k = 1, \dots, p$

若单位化 $\mathbf{v}_k$ ，则得到一个*标准正交基*。

证明/思路：

采用“分治”的思想，把 $W$ 的基 $\{ \mathbf{x}_1, \dots, \mathbf{x}_p \}$ 分为两部分 $\{ \mathbf{x}_1, \dots, \mathbf{x}_{p - 1} \}$ 与 $\mathbf{x}_p$ ，并记 $W_{p - 1} = \mathrm{Span} \{ \mathbf{x}_1, \dots, \mathbf{x}_{p - 1} \}$

设 $\mathbf{v}_p = \mathbf{x}_p - \mathrm{proj}_{W_{p - 1}} \mathbf{x}_p$ ，则 $\mathbf{v}_p \in W^{\perp}_{p - 1}$ ，且 $\{ \mathbf{x}_1, \dots, \mathbf{x}_{p - 1}, \mathbf{v}_p \}$ 线性无关。由基定理，它与 $\{ \mathbf{x}_1, \dots, \mathbf{x}_{p - 1}, \mathbf{x}_p \}$ 都是子空间 $W_p$ （即 $W$ ）的基。

对 $\{ \mathbf{x}_1, \dots, \mathbf{x}_{p - 1} \}$ 重复以上方法，直到 $W_1 = \mathrm{Span} \{ \mathbf{x}_1 \}$ ，对它有 $\mathbf{v}_1 = \mathbf{x}_1$

### 矩阵的 QR 分解

若矩阵 $A$ 的列线性无关，则应用格拉姆-施密特方法于 $A$ 的列向量等同于矩阵 $A$ 的 QR 分解。

*定理 12（QR 分解）*

若 $m \times n$ 矩阵 $A$ 的列线性无关，则 $A$ 可分解为 $A = Q R$ ，其中 $Q$ 是一个 $m \times n$ 矩阵，其列构成 $\mathrm{Col} \ A$ 的一个标准正交基， $R$ 是一个 $n \times n$ 上三角可逆矩阵且其对角线上的元素都是正数。

证明/思路：

设 $A = [\mathbf{x}_1 \dots \mathbf{x}_n]$ ，由格拉姆-施密特方法把 $A$ 的列向量正交化，有

$\mathbf{x}_1 = \mathbf{v}_1$

$\displaystyle \mathbf{x}_2 = \frac{\mathbf{x}_2 \cdot \mathbf{v}_1}{\mathbf{v}_1 \cdot \mathbf{v}_1} \mathbf{v}_1 + \mathbf{v}_2$

$\vdots$

$\displaystyle \mathbf{x}_n = \frac{\mathbf{x}_n \cdot \mathbf{v}_1}{\mathbf{v}_1 \cdot \mathbf{v}_1} \mathbf{v}_1 + \frac{\mathbf{x}_n \cdot \mathbf{v}_2}{\mathbf{v}_2 \cdot \mathbf{v}_2} \mathbf{v}_2 + \dots + \frac{\mathbf{x}_n \cdot \mathbf{v}_{n - 1}}{\mathbf{v}_{n - 1} \cdot \mathbf{v}_{n - 1}} \mathbf{v}_{n - 1} + \mathbf{v}_n$

再把 $\mathbf{v}_1, \dots \mathbf{v}_n$ 单位化为 $\mathbf{u}_1, \dots \mathbf{u}_n$

设 $\mathbf{v}_i = \| \mathbf{v}_i \| \mathbf{u}_i$ ，则 $\displaystyle \frac{\mathbf{x}_k \cdot \mathbf{v}_i}{\mathbf{v}_i \cdot \mathbf{v}_i} \mathbf{v}_i = (\mathbf{x}_k \cdot \mathbf{u}_i) \mathbf{u}_i$ ，有

$\mathbf{x}_1 = \| \mathbf{v}_1 \| \mathbf{u}_1$

$\mathbf{x}_2 = (\mathbf{x}_2 \cdot \mathbf{u}_1) \mathbf{u}_1 + \| \mathbf{v}_2 \| \mathbf{u}_2$

$\vdots$

$\mathbf{x}_n = (\mathbf{x}_n \cdot \mathbf{u}_1) \mathbf{u}_1 + (\mathbf{x}_n \cdot \mathbf{u}_2) \mathbf{u}_2 + \dots + (\mathbf{x}_n \cdot \mathbf{u}_{n - 1}) \mathbf{u}_{n - 1} + \| \mathbf{v}_n \| \mathbf{u}_n$

即

$[\mathbf{x}_1 \dots \mathbf{x}_n]
= [\mathbf{u}_1 \dots \mathbf{u}_n]
\begin{bmatrix*}
\| \mathbf{v}_1 \| & \mathbf{x}_2 \cdot \mathbf{u}_1 & \dots & \dots & \mathbf{x}_n \cdot \mathbf{u}_1 \\
0 & \| \mathbf{v}_2 \| & & & \mathbf{x}_n \cdot \mathbf{u}_2 \\
\vdots & 0 & \ddots & & \vdots \\
\vdots & \vdots & & \ddots & \mathbf{x}_n \cdot \mathbf{u}_{n - 1} \\
0 & 0 & & & \| \mathbf{v}_n \| \\
\end{bmatrix*}$

## 6.5 最小二乘问题

### 最小二乘解的定义

若有 $m \times n$ 矩阵 $A$ 和向量 $\mathbf{b} \in \mathbb{R}^m$ ，则 $A \mathbf{x} = \mathbf{b}$ 的*最小二乘解* $\hat{\mathbf{x}} \in \mathbb{R}^n$ ，它使

$\| \mathbf{b} - A \hat{\mathbf{x}}\| \le \| \mathbf{b} - A \mathbf{x} \|$

对所有 $\mathbf{x} \in \mathbb{R}^n$ 成立。

### 一般最小二乘问题的解

*定理 13*

方程 $A \mathbf{x} = \mathbf{b}$ 的最小二乘解集和*法方程* $A^T A \mathbf{x} = A^T \mathbf{b}$ 的解集相同。

证明/思路：

$A^T A \mathbf{x} = A^T \mathbf{b} \iff A^T (A \mathbf{x} - \mathbf{b}) = \mathbf{0}$

设 $A = [\mathbf{a}_1 \dots \mathbf{a}_n]$ ，则 $\begin{bmatrix*}
\mathbf{a}_1^T \\
\vdots \\
\mathbf{a}_n^T \\
\end{bmatrix*}
(A \mathbf{x} - \mathbf{b}) = \mathbf{0}$ ，即

$\mathbf{a}_i^T (A \mathbf{x} - \mathbf{b}) = 0 \iff \mathbf{a}_i \cdot (A \mathbf{x} - \mathbf{b}) = 0, \quad i = 1, \dots, n$

即 $A \mathbf{x} - \mathbf{b}$ 正交于 $\mathrm{Col} \ A$ 生成集中的每一个向量，因此 $A \mathbf{x} - \mathbf{b}$ 正交于 $\mathrm{Col} \ A$ ，即 $A \mathbf{x}$ 是 $\mathbf{b}$ 在 $\mathrm{Col} \ A$ 的正交投影。

*定理 14*

对 $m \times n$ 矩阵 $A$ ，以下条件等价

1. 对任意 $\mathbf{b} \in \mathbb{R}^m$ ，方程 $A \mathbf{x} = \mathbf{b}$ 有唯一的最小二乘解
2. $A$ 的列线性无关
3. 矩阵 $A^T A$ 可逆

证明/思路：

方程 $A \mathbf{x} = \mathbf{b}$ 有唯一的最小二乘解，即最小二乘法方程 $A^T A \mathbf{x} = A^T \mathbf{b}$ 有唯一解，由可逆矩阵性质可知法方程有唯一解等价于条件3。

条件2等价于条件3需要一条引理：设 $A$ 是 $m \times n$ 矩阵，则 $\mathrm{Nul} \ A = \mathrm{Nul} \ A^T A$ ，即 $A \mathbf{x} = \mathbf{0} \iff A^T A \mathbf{x} = \mathbf{0}$

由此，若方程 $A \mathbf{x} = \mathbf{0}$ 仅有平凡解，则方程 $A^T A \mathbf{x} = \mathbf{0}$ 亦仅有平凡解，即条件2等价于条件3。

### 特殊情形下最小二乘问题的解

*当A 的列正交时*

对方程 $A \mathbf{x} = \mathbf{b}$ ，当 $A$ 的列正交时，正交分解

$\displaystyle \hat{\mathbf{b}} = \frac{\mathbf{b} \cdot \mathbf{a}_1}{\mathbf{a}_1 \cdot \mathbf{a}_1} \mathbf{a}_1 + \dots + \frac{\mathbf{b} \cdot \mathbf{a}_n}{\mathbf{a}_n \cdot \mathbf{a}_n} \mathbf{a}_n$

即得 $\hat{\mathbf{x}}$ 使 $A \hat{\mathbf{x}} = \hat{\mathbf{b}}$

*当A 的列线性无关时*

有时，最小二乘的法方程可能是病态的，即 $A^T A$ 的元素在计算中出现的误差可能导致 $\hat{\mathbf{x}}$ 出现较大的误差，此时通过 $A$ 的 QR 分解可以更可靠地求解 $\hat{\mathbf{x}}$

*定理 15*

若 $m \times n$ 矩阵 $A$ 的列线性无关，设 $A = Q R$ 是定理 12 定义的 QR 分解，则对任意 $\mathbf{b} \in \mathbb{R}^m$ ，方程 $A \mathbf{x} = \mathbf{b}$ 有唯一的最小二乘解

$\hat{\mathbf{x}} = R^{-1} Q^T \mathbf{b}$

## 6.6 线性模型中的应用

在统计学中，将 $A \mathbf{x} = \mathbf{b}$ 写成 $X \mathbf{\beta} = \mathbf{y}$ ，并称 $X$ 为*设计矩阵*， $\mathbf{\beta}$ 为*参数向量*， $\mathbf{y}$ 为*观测向量*。

### 最小二乘直线

假定观测数据 $(x_1, y_1), \dots, (x_n, y_n)$ 的变量 $x$ 和 $y$ 之间具有某种线性关系，则*最小二乘直线* $y = \beta_0 + \beta_1 x$ 是余差平方和 $\displaystyle \sum^n_{i = 1} (y_i - (\beta_0 + \beta_1 x_i))^2$ 最小的直线，也称为 $\mathbf{y}$ 对 $\mathbf{x}$ 的*回归直线*。直线的系数 $\beta_0, \ \beta_1$ 称为（线性）*回归系数*。

确定最小二乘直线的回归系数即求方程 $X \mathbf{\beta} = \mathbf{y}$ 的最小二乘解，其中

$X = \begin{bmatrix*}
1 & x_1 \\
\vdots & \vdots \\
1 & x_n \\
\end{bmatrix*}$ ， $\mathbf{\beta} = \begin{bmatrix*}
\beta_0 \\
\beta_1 \\
\end{bmatrix*}$ ， $\mathbf{y} = \begin{bmatrix*}
y_1 \\
\vdots \\
y_n \\
\end{bmatrix*}$

### 一般线性模型

任何具有

$\mathbf{y} = X \mathbf{\beta} + \mathbf{\varepsilon}$

这种形式方程的模型称为*线性模型*，其中 $\mathbf{y}$ 为*观测向量* ，$X$ 为*设计矩阵*， $\mathbf{\beta}$ 为*参数向量*， $\mathbf{\varepsilon}$ 为*余差向量*。

一旦 $\mathbf{y}$ 和 $X$ 被确定，使 $\mathbf{\varepsilon}$ 长度最小化即相当于求 $\mathbf{y} = X \mathbf{\beta}$
 的最小二乘解。

### 曲线的最小二乘拟合

若给定观测数据 $(x_1, y_1), \dots, (x_n, y_n)$ 不接近任何直线，可假定 $\mathbf{x}$ 和 $\mathbf{y}$ 具有其他函数关系，用曲线

$y = \beta_0 f_0(x) + \beta_1 f_1(x) + \dots + \beta_k f_k(x)$

来拟合，其中 $f_0, \dots, f_k$ 是已知函数， $\beta_0, \dots, \beta_k$ 是待定参数，如

$y = \beta_0 + \beta_1 x + \beta_2 x^2$

### 多重回归

若观测数据包含多个独立变量（如 $u, \ v$ ）和一个相关变量（如 $y$ ），则*预测方程*可以是

$y = \beta_0 + \beta_1 u + \beta_2 v$

或

$y = \beta_0 + \beta_1 u + \beta_2 v + \beta_3 u^2 + \beta_4 uv + \beta_5 v^2$

等等。一般地，多重（二重）回归的预测方程是

$y = \beta_0 f_0(u, v) + \beta_1 f_1(u, v) + \dots + \beta_k f_k(u, v)$

其中 $f_0, \dots, f_k$ 是已知函数， $\beta_0, \dots, \beta_k$ 是待定参数。同样可用最小二乘法确定 $\beta_0, \dots, \beta_k$

## 6.7 内积空间

### 内积空间的定义

向量空间 $V$ 上的*内积*是一个函数：对于任意 $\mathbf{u}, \mathbf{v} \in V$ ，存在一个实数 $\lang \mathbf{u}, \mathbf{v} \rang$ 满足如下公理，其中 $\mathbf{u}, \mathbf{v}, \mathbf{w} \in V, \ c \in \mathbb{R}$

1. $\lang \mathbf{u}, \mathbf{v} \rang = \lang \mathbf{v}, \mathbf{u} \rang$
2. $\lang \mathbf{u} + \mathbf{v}, \mathbf{w} \rang = \lang \mathbf{u}, \mathbf{w} \rang + \lang \mathbf{v}, \mathbf{w} \rang$
3. $\lang c \mathbf{u}, \mathbf{v} \rang = c \lang \mathbf{u}, \mathbf{v} \rang$
4. $\lang \mathbf{u}, \mathbf{u} \rang \ge 0$ ，且 $\lang \mathbf{u}, \mathbf{u} \rang = 0 \iff \mathbf{u} = \mathbf{0}$

一个定义了内积函数的向量空间称为*内积空间*。

由以上公里可推出

* $\lang \mathbf{u}, \mathbf{0} \rang = 0$

### 长度、距离和正交性

设 $V$ 是一个内积空间，其向量 $\mathbf{v}$ 的*长度*或*范数*定义为

$\| \mathbf{v} \| = \sqrt{\lang \mathbf{v}, \mathbf{v} \rang}$

长度为 1 的向量称为单位向量。

向量 $\mathbf{u}, \mathbf{v}$ 之间的*距离*是 $\| \mathbf{u} - \mathbf{v} \|$

向量 $\mathbf{u}, \mathbf{v}$ 正交即 $\lang \mathbf{u}, \mathbf{v} \rang = 0$

### 格拉姆-施密特方法

内积空间中有限维子空间的正交基的构造可通过格拉姆-施密特方法，同 $\mathbb{R}^n$ 空间一样。

向量在具有正交基的子空间上的正交投影也同 $\mathbb{R}^n$ 一样构造。投影不依赖于正交基的选取，并且具有正交分解定理和最佳逼近定理中所描述的性质。

### 内积空间的最佳逼近

应用数学中常见的问题涉及元素为函数的向量空间，需要在 $V$ 特定的子空间 $W$ 中选取函数 $g$ 来逼近 $V$ 中的函数 $f$ 。逼近的程度依赖于 $\| f - g \|$ 的定义，即 $f$ 和 $g$ 的内积定义。

### 两个不等式

由内积空间上的勾股定理可推出以下重要不等式

*定理 16（柯西-施瓦茨不等式）*

对任意 $\mathbf{u}, \mathbf{v} \in V$ ，有

$| \lang \mathbf{u}, \mathbf{v} \rang | \le \| \mathbf{u} \| \| \mathbf{v} \|$

*定理 17（三角不等式）*

对任意 $\mathbf{u}, \mathbf{v} \in V$ ，有

$\| \mathbf{u} + \mathbf{v} \| \le \| \mathbf{u} \| + \| \mathbf{v} \|$

### C[a, b] 上的内积

C[a, b] 是所有在区间 $[a, b]$ 上连续的函数构成的向量空间。它也是一个内积空间，如果定义如下内积

$\displaystyle \lang f, g \rang = \int_a^b f(t) g(t) \mathrm{d}t$

## 6.8 内积空间的应用

### 加权最小二乘法

在[前述的最小二乘法](#最小二乘直线)下，误差平方和为

$\mathrm{SS}(E) = \| \mathbf{y} - \hat{\mathbf{y}} \|^2 = (y_1 - \hat{y_1})^2 + \dots + (y_n - \hat{y_n})^2$

其中， $y_i$ 是观测值， $\hat{y}_i$ 是预测值。

有时（比如观测值 $y_i$ 的可靠性不同），需要给以上每一项加上不同的权重，即

$\mathrm{SS}(E) = w_1^2(y_1 - \hat{y_1})^2 + \dots + w_n^2(y_n - \hat{y_n})^2$

此时，可以定义内积为

$\lang x, y \rang = w_1^2 x_1 y_1 + \dots + w_n^2 x_n y_n$

注意：在 $\mathbb{R}^n$ 上解决一般最小二乘问题的法方程不适用于“自定义”内积。

也可以把这种加权最小二乘问题转化为一般最小二乘问题来解决，如下：

设 $W$ 是对角线上的元素是 $w_1, \dots, w_n$ 的对角矩阵，有

$W \mathbf{y} =
\begin{bmatrix*}
w_1 & 0 & \dots & 0 \\
0 & w_2 & & \vdots \\
\vdots & & \ddots & 0 \\
0 & \dots & 0 & w_n
\end{bmatrix*}
\begin{bmatrix*}
y_1 \\
y_2 \\
\vdots \\
y_n
\end{bmatrix*} =
\begin{bmatrix*}
w_1 y_1 \\
w_2 y_2 \\
\vdots \\
w_n y_n
\end{bmatrix*}$

对 $W \hat{\mathbf{y}}$ 有类似表达式，这样

$\mathrm{SS}(E) = \| W \mathbf{y} - W \hat{\mathbf{y}} \|^2$

又 $\hat{\mathbf{y}} = X \mathbf{\beta}$ ，则

$\mathrm{SS}(E) = \| W \mathbf{y} - W \hat{\mathbf{y}} \|^2 = \| W \mathbf{y} - W X \mathbf{\beta} \|^2$

上式表明 $W X \mathbf{\beta}$ 对 $W \mathbf{y}$ 的最佳逼近即方程

$W X \mathbf{\beta} = W \mathbf{y}$

的最小二乘解，其法方程是

$(W X)^T W X \mathbf{\beta} = (W X)^T W \mathbf{y}$

### 数据趋势分析

（略）

### 傅立叶级数

连续函数可用正、余弦函数的线性组合来逼近。为简化问题，这里只考虑 $C[0, 2 \pi]$ 上的连续函数。

对 $[0, 2 \pi]$ 上的任意连续函数 $f(t)$ ，有

$\displaystyle f(t) = \frac{a_0}{2} + \sum_{k = 1}^{\infty} (a_k \cos kt + b_k \sin kt)$

以上表达式称为 $f$ 在 $[0, 2 \pi]$ 上的*傅立叶级数*。其中，

$\displaystyle a_k = \frac{1}{\pi} \int_0^{2 \pi} f(t) \cos kt \mathrm{d}t$

$\displaystyle b_k = \frac{1}{\pi} \int_0^{2 \pi} f(t) \sin kt \mathrm{d}t$

称为 $f$ 的*傅立叶系数*。

在以上表达式中，若和式取有限项，即

$\displaystyle f(t) = \frac{a_0}{2} + \sum_{k = 1}^{n} (a_k \cos kt + b_k \sin kt)$

则称为 $f$ 在 $[0, 2 \pi]$ 上的*n 阶傅立叶逼近*。

傅立叶逼近的本质是在内积空间 $C[0, 2 \pi]$ 的一个子空间里寻找一个最佳逼近（函数）。

内积函数定义为

$\displaystyle \lang f, g \rang = \int_0^{2 \pi} f(t) g(t) \mathrm{d}t$

子空间的正交基为

$\{ 1,\ \cos t,\ \sin t,\ \dots,\ \cos nt,\ \sin nt \}$