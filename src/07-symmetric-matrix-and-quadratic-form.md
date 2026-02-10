# 7 对称矩阵和二次型

## 7.1 对称矩阵的对角化

### 对称矩阵的正交对角化

*对称矩阵的定义*

矩阵 $A$ 是*对称*的当且仅当 $A^T = A$

*定理 1*

若矩阵是对称的，则它的属于不同特征空间的任意两个特征向量是正交的。

*正交对角化*

矩阵 $A$ 可*正交对角化*，若存在一个正交矩阵 $P$ 和一个对角矩阵 $D$ 使得

$A = P D P^T = P D P^{-1}$

*定理 2*

一个 $n \times n$ 矩阵 $A$ 可正交对角化的充要条件是 $A$ 是对称矩阵。

### 对称矩阵的谱定理和谱分解

*谱*

矩阵 $A$ 的特征值的集合有时称为 $A$ 的*谱*。

*定理 3（对称矩阵的谱定理）*

一个对称的 $n \times n$ 矩阵 $A$ 有如下性质：

1. $A$ 有 $n$ 个实特征值（包含重复的特征值）
2. 对每个特征值 $\lambda$ ，对应的特征空间维数等于 $\lambda$ 作为特征方程的根的重数
3. 特征空间相互正交
4. $A$ 可正交对角化

*谱分解*

设矩阵 $A$ 可正交对角化为 $A = P D P^T$

又设 $P = [\mathbf{u}_1 \dots \mathbf{u}_n]$ ， $D = \begin{bmatrix*}
\lambda_1 \\
& \ddots \\
& & \lambda_n
\end{bmatrix*}$

则 $A = \lambda_1 \mathbf{u}_1 \mathbf{u}_1^T + \dots + \lambda_n \mathbf{u}_n \mathbf{u}_n^T$

上式将矩阵 $A$ 拆分为 $A$ 的谱确定的矩阵之和，因此称为矩阵 $A$ 的*谱分解*。其中，每个矩阵 $\mathbf{u}_i \mathbf{u}_i^T$ 都是*投影矩阵* —— 对每个 $\mathbf{x} \in \mathbb{R}^n$ ， $\mathbf{u}_i \mathbf{u}_i^T \mathbf{x}$ 是 $\mathbf{x}$ 在 $\mathbf{u}_i$ 生成的子空间（直线）上的投影（参见[6.3节](06-orthogonality.md#63-正交投影)定理10）。

### 投影矩阵 *

若 $n \times n$ 矩阵 $A$ 是对称的且 $A^2 = A$ ，则称 $A$ 为*投影矩阵* —— 对任意 $\mathbf{x} \in \mathbb{R}^n$ ， $A \mathbf{x}$ 是 $\mathbf{x}$ 在 $A$ 的列空间的正交投影。

可以通过最小二乘法方程或 SVD 分解来证明以上命题（参见习题36）。

## 7.2 二次型

### 二次型的定义

一个*二次型*是一个定义在 $\mathbb{R}^n$ 上的函数 $Q(\mathbf{x}) = \mathbf{x}^T A \mathbf{x}$ ，其中 $\mathbf{x} \in \mathbb{R}^n$ ， $A$ 是一个 $n \times n$ 对称矩阵，称为*关于二次型的矩阵*。

### 二次型的变量代换

*定理 4（主轴定理）*

设有二次型 $\mathbf{x}^T A \mathbf{x}$ ，其中 $A$ 是一个 $n \times n$ 对称矩阵，则存在一个正交矩阵 $P$ ，做变量代换 $\mathbf{x} = P \mathbf{y}$ ，使得 $\mathbf{x}^T A \mathbf{x} = \mathbf{y}^T D \mathbf{y}$ ，而后者不含交叉乘积（即 $x_i x_j, \ i \ne j$ ）项。

实际上， $A$ 可正交对角化为 $A = P D P^{-1}$ ， $P$ 、 $D$ 满足以上定理。

定理中矩阵 $P$ 的列称为二次型 $\mathbf{x}^T A \mathbf{x}$ 的*主轴*，向量 $\mathbf{y}$ 是 $\mathbf{x}$ 在主轴（单位正交基）上的坐标。

### 二次型的分类

*定义*

二次型 $Q$ 是

* *正定的*，若当 $\mathbf{x} \ne \mathbf{0}$ 时 $Q(\mathbf{x}) > 0$
* *负定的*，若当 $\mathbf{x} \ne \mathbf{0}$ 时 $Q(\mathbf{x}) < 0$
* *不定的*，若 $Q(\mathbf{x})$ 可正可负

此外， $Q$ 也称为

* *半正定的*，若 $Q(\mathbf{x}) \ge 0 \quad \forall \mathbf{x}$
* *半负定的*，若 $Q(\mathbf{x}) \le 0 \quad \forall \mathbf{x}$

利用二次型的分类，可以定义二次型相应的矩阵为*正定矩阵*、*负定矩阵*、*不定矩阵*，或者*半正定矩阵*、*半负定矩阵*。

*定理 5（二次型与特征值）*

若 $A$ 是 $n \times n$ 对称矩阵，则二次型 $\mathbf{x}^T A \mathbf{x}$ 是

* 正定的，当且仅当 $A$ 的所有特征值为正
* 负定的，当且仅当 $A$ 的所有特征值为负
* 不定的，当且仅当 $A$ 既有正特征值又有负特征值

## 7.3 条件优化

*定理 6*

设 $n \times n$ 对称矩阵 $A$ 的 $n$ 个特征值（包括重复的特征值）从大到小依次排列为 $\lambda_1 \ge \lambda_2 \ge \dots \lambda_n$ ，对应的单位正交的特征向量为 $\mathbf{u}_1, \mathbf{u}_2, \dots, \mathbf{u}_n$ ，那么二次型 $\mathbf{x}^T A \mathbf{x}$ 在限制条件 $\| \mathbf{x} \| = 1$ 下的最大值是 $\lambda_1$ ，当 $\mathbf{x} = \mathbf{u}_1$ 时取得；最小值是 $\lambda_n$，当 $\mathbf{x} = \mathbf{u}_n$ 时取得。

*定理 7*

接定理6，若增加限制条件 $\mathbf{x}^T \mathbf{u}_1 = 0$ ，则二次型 $\mathbf{x}^T A \mathbf{x}$ 的最大值是 $\lambda_2$ ，当 $\mathbf{x} = \mathbf{u}_2$ 时取得。

*定理 8*

设 $n \times n$ 对称矩阵 $A$ 的 $n$ 个特征值（包括重复的特征值）从大到小依次排列为 $\lambda_1 \ge \lambda_2 \ge \dots \lambda_n$ ，对应的单位正交的特征向量为 $\mathbf{u}_1, \mathbf{u}_2, \dots, \mathbf{u}_n$ ，那么二次型 $\mathbf{x}^T A \mathbf{x}$ 在以下限制条件下

$\mathbf{x}^T \mathbf{x} = 1, \ \mathbf{x}^T \mathbf{u}_1 = 0, \ \dots, \ \mathbf{x}^T \mathbf{u}_{k - 1} = 0 \quad (2 \le k \le n)$

其最大值是 $\lambda_k$ ，当 $\mathbf{x} = \mathbf{u}_k$ 时取得。

## 7.4 奇异值分解

### 奇异值的定义和性质

*定义*

$m \times n$ 矩阵 $A$ 的*奇异值*是 $A^T A$ 的特征值的平方根，记作 $\sigma_1, \dots, \sigma_n$ ，按递减顺序排列。

设 $\mathbf{v}_1, \dots, \mathbf{v}_n$ 是 $A^T A$ 的单位正交的特征向量，则 $A$ 的奇异值是向量 $A \mathbf{v}_1, \dots, A \mathbf{v}_n$ 的长度，即 $\sigma_i = \| A \mathbf{v}_i \|$

证明/思路：

$\| A \mathbf{v}_i \|^2 = (A \mathbf{v}_i) \cdot (A \mathbf{v}_i) = (A \mathbf{v}_i)^T (A \mathbf{v}_i) = \mathbf{v}_i^T (A^T A \mathbf{v}_i) = \mathbf{v}_i^T (\lambda_i \mathbf{v}_i) = \lambda_i$

因此

$\sigma_i = \sqrt{\lambda_i} = \| A \mathbf{v}_i \|$

由此亦可得出： $A^T A$ 的特征值总是非负的。

*定理 9*

对 $m \times n$ 矩阵 $A$ ，设 $\mathbf{v}_1, \dots, \mathbf{v}_n$ 是 $A^T A$ 的单位正交的特征向量，且其对应的特征值满足 $\lambda_1 \ge \dots \ge \lambda_n$ ，若 $A$ 有 $r$ 个正的奇异值，则 $\{ A \mathbf{v}_1, \dots, A \mathbf{v}_r\}$ 是 $\mathrm{Col} \ A$ 的一个正交基，且 $\mathrm{rank} \ A = r$

证明/思路：

设 $x = c_1 A \mathbf{v}_1 + \dots + c_r A \mathbf{v}_r$ ，则 $x = A (c_1 \mathbf{v}_1 + \dots + c_r \mathbf{v}_r)$ ，即

$x \in \mathrm{Span} \{ A \mathbf{v}_1, \dots, A \mathbf{v}_r\} \implies x \in \mathrm{Col} \ A$

注意到 $\mathbf{v}_1, \dots, \mathbf{v}_n$ 是 $\mathbb{R}^n$ 的一个基，设 $x = A \mathbf{y}, \ \mathbf{y} \in \mathbb{R}^n$ ，其中 $\mathbf{y} = c_1 \mathbf{v}_1 + \dots + c_n \mathbf{v}_n$ ，则

$x = c_1 A \mathbf{v}_1 + \dots + c_n A \mathbf{v}_n$

又当 $i > r$ 时， $\| A \mathbf{v}_i \| = \sigma_i = 0 \implies A \mathbf{v}_i = 0$ ，故

$x = c_1 A \mathbf{v}_1 + \dots + c_r A \mathbf{v}_r$ ，即

$x \in \mathrm{Col} \ A \implies x \in \mathrm{Span} \{ A \mathbf{v}_1, \dots, A \mathbf{v}_r\}$

综上有 $\mathrm{Col} \ A = \mathrm{Span} \{ A \mathbf{v}_1, \dots, A \mathbf{v}_r\}$

又 $(A \mathbf{v}_i)^T(A \mathbf{v}_j) = \mathbf{v}_i^T A^T A \mathbf{v}_j = \mathbf{v}_i^T (\lambda_j \mathbf{v}_j) = 0, \ i \ne j$ ，故 $\{ A \mathbf{v}_1, \dots, A \mathbf{v}_r\}$ 是 $\mathrm{Col} \ A$ 的一个正交基。

### 奇异值分解

*定理 10（奇异值分解）*

若 $A$ 是秩为 $r$ 的 $m \times n$ 矩阵，则存在一个 $m \times n$ 矩阵 $\Sigma = \begin{bmatrix*}
D & 0 \\
0 & 0 \\
\end{bmatrix*}$ ，其中 $D = \begin{bmatrix*}
\sigma_1 & \dots & 0 \\
\vdots & \ddots & \vdots \\
0 & \dots & \sigma_r \\
\end{bmatrix*}$ 其对角线上的元素是 $A$ （全部）的正奇异值且 $\sigma_1 \ge \dots \ge \sigma_r > 0$ ；同时存在一个 $m \times m$ 正交矩阵 $U$ 和一个 $n \times n$ 正交矩阵 $V$ ，使得 $A = U \Sigma V^T$

在以上分解中， $U$ 的列称为 $A$ 的*左奇异向量*， $V$ 的列称为 $A$ 的*右奇异向量*。

$A = U \Sigma V^T$ 称为 $A$ 的一个*奇异值分解*（或SVD）。 $A$ 的奇异值分解不唯一。

证明/思路：

$A = U \Sigma V^T \iff A V = U \Sigma$

设 $V = [\mathbf{v}_1 \ \dots \ \mathbf{v}_n], \ U = [\mathbf{u}_1 \ \dots \ \mathbf{u}_m]$ ，则

$A V =[A \mathbf{v}_1 \ \dots \ A \mathbf{v}_n]$

$U \Sigma = [\sigma_1 \mathbf{u}_1 \ \dots \ \sigma_r \mathbf{u}_r \ \mathbf{0} \dots \ \mathbf{0}]$

$A V = U \Sigma \iff \begin{cases}
A \mathbf{v}_i = \sigma_i \mathbf{u}_i & 1 \le i \le r\\
A \mathbf{v}_i = \mathbf{0} & r < i \le n \\
\end{cases}$

可见，若 $V$ 的列是 $A^T A$ 的单位正交的特征向量，并设 $\displaystyle \mathbf{u}_i = \frac{A \mathbf{v}_i}{\sigma_i} = \frac{A \mathbf{v}_i}{\| A \mathbf{v}_i \|} \quad (1 \le i \le r)$ ，则以上条件可以满足；对于 $\mathbf{u}_i \; r < i \le m$ ，只要扩充 $\{ \mathbf{u}_1, \dots, \mathbf{u}_r \}$ 得到 $\mathbb{R}^m$ 的一个单位正交基即可。

实际上，若 $m \times n$ 矩阵 $A$ 可以表示为 $A = U \Sigma V^T$ ，其中 $U$ 是 $m \times m$ 正交矩阵、 $V$ 是 $n \times n$ 正交矩阵， $\Sigma = \begin{bmatrix*}
D & 0 \\
0 & 0 \\
\end{bmatrix*}$ ，其中 $D$ 是 $r \times r$ 对角矩阵且对角线上的元素都是正数，则 $U$ 的列是 $A A^T$ 的特征向量， $V$ 的列是 $A^T A$ 的特征向量， $D$ 对角线上的元素是 $A$ （全部）的正奇异值。

证明/思路：

$A A^T = (U \Sigma V^T)(U \Sigma V^T)^T = U (\Sigma \Sigma^T) U^T$

其中 $\Sigma \Sigma^T = \begin{bmatrix*}
D^2 & 0 \\
0 & 0 \\
\end{bmatrix*}$ 是一个 $m \times m$ 对角矩阵，其对角线上的元素是 $\sigma_1^2, \dots, \sigma_r^2, 0, \dots, 0$ （共 $m$ 个）

根据[5.3节](05-eigenvalue-and-eigenvector.md#53-对角化)定理5——可对角化矩阵的充要条件， $U$ 的列是 $A A^T$ 的 $m$ 个线性无关的特征向量，对应的特征值是 $\sigma_1^2, \dots, \sigma_r^2, 0, \dots, 0$ （共 $m$ 个）

同理， $A^T A = (U \Sigma V^T)^T U \Sigma V^T = V (\Sigma^T \Sigma) V^T$

其中 $\Sigma^T \Sigma$ 是一个 $n \times n$ 对角矩阵，其对角线上的元素是 $\sigma_1^2, \dots, \sigma_r^2, 0, \dots, 0$ （共 $n$ 个）

同样根据可对角化定理， $V$ 的列是 $A^T A$ 的 $n$ 个线性无关的特征向量，对应特征值是 $\sigma_1^2, \dots, \sigma_r^2, 0, \dots, 0$ （共 $n$ 个）

### 基本子空间的基

设 $m \times n$ 矩阵 $A$ 的秩为 $r$ ，奇异值为 $\sigma_1, \dots, \sigma_n$ ，左奇异向量为 $\mathbf{u}_1, \dots, \mathbf{u}_m$ ，右奇异向量为 $\mathbf{v}_1, \dots, \mathbf{v}_n$ ，则 $A$ 的四个基本子空间的（单位正交）基如下：

| 子空间          | （单位正交）基
|----------------|----------------
| $\mathrm{Row} \ A$ | $\mathbf{v}_1, \dots, \mathbf{v}_r$
| $\mathrm{Nul} \ A$ | $\mathbf{v}_{r + 1}, \dots, \mathbf{v}_n$
| $\mathrm{Row} \ A^T$ （ $\mathrm{Col} \ A$ ）| $\mathbf{u}_1, \dots, \mathbf{u}_r$ 或 $A \mathbf{v}_1, \dots, A \mathbf{v}_r$
| $\mathrm{Nul} \ A^T$ | $\mathbf{u}_{r + 1}, \dots, \mathbf{u}_m$

证明/思路：

对于 $\mathrm{Col} \ A$ ：由定理10的推论， $\mathbf{v}_1, \dots, \mathbf{v}_n$ 是 $A^T A$ 的单位正交的特征向量，再由定理9， $A \mathbf{v}_1, \dots, A \mathbf{v}_r$ 是 $\mathrm{Col} \ A$ 的一个正交基；由定理10， $A V = U \Sigma$ 可推得 $A \mathbf{v}_i = \sigma_i \mathbf{u}_i$ （参见定理10证明过程），当 $1 \le i \le r$ 时 $\sigma_i \ne 0$ ，有 $\displaystyle \mathbf{u}_i = \frac{A \mathbf{v}_i}{\sigma_i} = \frac{A \mathbf{v}_i}{\| A \mathbf{v}_i \|}$ ，故 $\mathbf{u}_1, \dots, \mathbf{u}_r$ 是 $\mathrm{Col} \ A$ 的一个单位正交基。

对于 $\mathrm{Nul} \ A^T$ ：由[6.1节](06-orthogonality.md#61-内积长度和正交性)定理3 $\mathrm{Nul} \ A^T = (\mathrm{Row} \ A^T)^{\perp}$ ，又 $\mathbf{u}_1, \dots, \mathbf{u}_m$ 是 $\mathbb{R}^m$ 的一个单位正交基，且其中 $\mathbf{u}_1, \dots, \mathbf{u}_r$ 是 $\mathrm{Row} \ A^T$ 的一个单位正交基，则 $\mathbf{u}_{r + 1}, \dots, \mathbf{u}_m$ 是 $\mathrm{Nul} \ A^T$ 的一个单位正交基。

对于 $\mathrm{Nul} \ A$ ：由前述证明可知 $A \mathbf{v}_i = 0 \ (r < i \le n)$ ，即 $\mathbf{v}_i \in \mathrm{Nul} \ A \ (r < i \le n)$ ， $\mathbf{v}_{r + 1}, \dots, \mathbf{v}_n$ 是 $\mathrm{Nul} \ A$ 的 $n - r$ 个线性无关的向量；又由秩定理， $\dim \mathrm{Nul} \ A = n - r$ ，故它们构成了 $\mathrm{Nul} \ A$ 的一个基。

对于 $\mathrm{Row} \ A$ ：同样由 $\mathrm{Row} \ A = (\mathrm{Nul} \ A)^{\perp}$ ，且 $\mathbf{v}_1, \dots, \mathbf{v}_n$ 是 $\mathbb{R}^n$ 的一个单位正交基，其中 $\mathbf{v}_{r + 1}, \dots, \mathbf{v}_n$ 是 $\mathrm{Nul} \ A$ 的一个基，则 $\mathbf{v}_1, \dots, \mathbf{v}_r$ 是 $\mathrm{Row} \ A$ 的一个基。

### 简化的奇异值分解、伪逆和最小二乘解

*简化的奇异值分解*

以分块矩阵来简化奇异值分解，设 $\mathrm{rank} \ A = r$

$U = [U_r \ U_{m - r}] \quad U_r = [\mathbf{u}_1 \dots \mathbf{u}_r]$

$V = [V_r \ V_{n - r}] \quad V_r = [\mathbf{v}_1 \dots \mathbf{v}_r]$

则

$A = [U_r \ U_{m - r}]
\begin{bmatrix*}
D & 0 \\
0 & 0 \\
\end{bmatrix*}
\begin{bmatrix*}
V_r^T \\[0.33em]
V_{n - r}^T \\
\end{bmatrix*}
= U_r D V_r^T$

这样的分解称为 $A$ 的*简化的奇异值分解*。

*伪逆*

由简化的奇异值分解，定义 $A$ 的*伪逆*为 $A^+ = V_r D^{-1} U_r^T$

*最小二乘解*

对方程 $A \mathbf{x} = \mathbf{b}$ ，设 $\hat{\mathbf{x}} = A^+ \mathbf{b}$ ，则 $A \hat{\mathbf{x}} = U_r U_r^T \mathbf{b}$

$U_r$ 的列构成 $\mathrm{Col} \ A$ 的一个单位正交基，由[6.3节](06-orthogonality.md#63-正交投影)定理10， $U_r U_r^T$ 是一个投影矩阵， $U_r U_r^T \mathbf{b}$ 是 $\mathbf{b}$ 在 $\mathrm{Col} \ A$ 上的正交投影。


## 7.5 图像处理和统计学的应用

### 均值和协方差

设 $[\mathbf{x}_1 \dots \mathbf{x}_n]$ 是一个 $p \times n$ 的观测矩阵，则观测向量的*样本均值*

$\displaystyle M = \frac{1}{n} (\mathbf{x}_1 + \dots + \mathbf{x}_n)$

设 $\hat{\mathbf{x}_k} = \mathbf{x}_k - M$ ，并定义

$B = [\hat{\mathbf{x}_1} \dots \hat{\mathbf{x}_n}]$

这样的 $B$ 称为*平均偏差形式* ，它的零样本均值为零。

样本*协方差矩阵*是一个 $p \times p$ 矩阵 $S$ ，定义为

$\displaystyle S = \frac{1}{n - 1} B B^T$

举例来说，设 $B = \begin{bmatrix*}
b_{11} & b_{12} & b_{13} \\
b_{21} & b_{22} & b_{23} \\
\end{bmatrix*}$ ，则

$\displaystyle S = \frac{1}{2} B B^T = \frac{1}{2} \begin{bmatrix*}
b_{11}^2 + b_{12}^2 + b_{13}^2 & b_{11} b_{21} + b_{12} b_{22} + b_{13} b_{23} \\
b_{11} b_{21} + b_{12} b_{22} + b_{13} b_{23} & b_{21}^2 + b_{22}^2 + b_{23}^2 \\
\end{bmatrix*}$

$S$ 中的对角元素 $s_{ii}$ 称为 $x_i$ 的*方差*。（观测矩阵的）数据的*总方差*即 $S$ 对角线上的元素之和 $\mathrm{tr} (S)$

$S$ 中的元素 $s_{ij} \ (i \ne j)$ 称为 $x_i$ 和 $x_j$ 的*协方差*。若 $x_i$ 和 $x_j$ 的协方差为零，则称 $x_i$ 和 $x_j$ 是*无关*的。

### 主成分分析

设 $p \times n$ 矩阵 $B = [\mathbf{x}_1 \dots \mathbf{x}_n]$ 已经是平均偏差形式，主成分分析的目标是找到一个 $p \times p$ 正交矩阵 $P$ ，确定一个变量代换 $\mathbf{x} = P \mathbf{y}$ ，使得新变量 $y_1, \dots, y_p$ 具有两两无关的性质，且整理后的方差按递减顺序排列。

也就是说，若

$B = [\mathbf{x}_1 \dots \mathbf{x}_n] = [P \mathbf{y}_1, \dots, P \mathbf{y}_n] = P C, \quad C = [\mathbf{y}_1, \dots, \mathbf{y}_n]$

则

$\displaystyle S = \frac{1}{n - 1} B B^T = \frac{1}{n - 1} P C C^T P^T$

其中 $\displaystyle \frac{1}{n - 1} C C^T$ 即 $\mathbf{y}$ 的协方差矩阵，记作 $Q$ ，则 $S = P Q P^T$ 。现在希望 $Q$ 是一个对角矩阵。

显然，把对称矩阵 $S$ 正交对角化，并使对角矩阵 $Q$ 上的特征向量从大到小排列即可满足要求。

协方差矩阵 $S$ 的单位正交的特征向量称为（观测矩阵中）数据的*主成分*。*第一主成分*是 $S$ 中最大特征值对应的特征向量；*第二主成分*是 $S$ 中第二大特征值对应的特征向量，以此类推。

*用奇异值分解来确定主成分*

在实际计算中，奇异值分解是主成分分析的主要工具，它更快更准确。

设 $B$ 是一个具有平均偏差形式的 $p \times n$ 观测矩阵， $\displaystyle A = \frac{1}{\sqrt{n - 1}} B^T$ ，则 $A^T A = S$ 。 $A$ 的奇异值的平方即 $S$ 的特征值， $A$ 的右奇异向量即数据的主成分。