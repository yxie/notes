# Week 2 Neural Network Basics

**Logistic regression**

* Output: $$\hat{y} = \sigma(w^T x + b), \sigma(z) = \frac{1}{1+e^{-z}}$$


* Loss function: 
  * square error $$L(\hat{y}, y) = \frac{1}{2} (\hat{y} - y)^2$$ (don't use this, optimization problem becomes non-convex?)
  * log error $$L(\hat{y}, y) = - (y \log \hat{y} + (1-y) log (1-\hat{y}))$$
    * if y = 1: want $$\hat{y}$$ large. Since for sigmoid, $$\hat{y}$$ is in [0,1], we want $$\hat{y}$$ -> 1
    * if y = 0: want $$\hat{y}$$ -> 0
* Cost function: $$J(w,b) = \frac{1}{m} \sum_{i=1}^m L(\hat{y}^{(i)}, y^{(i)})$$
* Gradient descent:
  * $$J(w,b)$$ is convex, w initialized to 0 is fine, no need for random initialization
  * $$w:= w - \alpha \frac{d J(w,b)}{dw}$$. For code writing, use `dw` to represent the derivative terms
  * $$b:= b-\alpha\frac{d J(w,b)}{d b}$$
* Logistic regression derivatives:
  * Denote $$a = \hat{y} = \sigma(w^T x + b)$$
  * $$\frac{dL}{dz} = \frac{dL}{da} \times \frac{da}{dz} = a - y$$, because $$\frac{dL}{da} = -\frac{y}{a} + \frac{1-y}{1-a}$$  and $$\frac{da}{dz} = a(1-a)$$
  * $$\frac{dL}{dw} = x\frac{dL}{dz}$$



**Vectorization**

* $$z = w^Tx + b$$, in python, `z = np.dot(w,x) + b` 
* SIMD: single instruction, multiple data
* Whenever possible, avoid explicit for loops
* Vectorizing logistic regression
  * $$X = [x^{(1)}, ..., x^{(m)}], Y = [y^{(1)}, ..., y^{(m)}], $$
  * $$Z=[z^{(1)}, ..., z^{(m)}] = w^T X + b$$, in python, `z = np.dot(w.T, x) + b`
  * $$A = [a^{(1)}, ..., a^{(m)}] = \sigma(Z)$$
  * $$dZ = [dz^{(1)}, ..., dz^{(m)}] = A - Y$$
  * $$dw += \frac{1}{m} X \cdot dz^T$$, in python, `1/m * np.dot(X, dz.T)`
  * $$db = \frac{1}{m} \sum_{i=1}^{m} dz^{(i)}$$, in python, `1/m * np.sum(dZ)`
* Broadcasting in python
  * Sum over rows: `cal = A.sum(axis=0)`
  * Percentage over rows: `100 * A / (cal.reshape(1,4))`
  * matrix (m,n) +/-/* (1,n) -> (m,n), matrix (m,n) +/-/* (m,1) -> (m,n)
  * matrix (m,1) +/-/* (1,1) -> (m,1)