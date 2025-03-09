# Linear Combination Checker using Gaussian Elimination

This Julia program checks if a target vector can be expressed as a linear combination of a set of input vectors using Gaussian elimination. It provides the coefficients of the linear combination or reports if no solution exists.

## What is a Linear Combination?
A vector **V₃** is a **linear combination** of vectors **V₁, V₂, ..., Vₙ** if there exist scalars (real numbers) **c₁, c₂, ..., cₙ** such that:  
c₁·V₁ + c₂·V₂ + ... + cₙ·Vₙ = V₃
This means **V₃** can be expressed as a weighted sum of the vectors **V₁, V₂, ..., Vₙ**, where the weights are the scalars **c₁, c₂, ..., cₙ**.

### Example
Let:  
- **V₁ = [1, 2]**,  
- **V₂ = [3, 4]**,  
- **V₃ = [3, 6]**.  

We ask: *Can **V₃** be written as **c₁·V₁ + c₂·V₂** for some scalars **c₁, c₂**?*  

Solving the system:  

1·c₁ + 3·c₂ = 3
2·c₁ + 4·c₂ = 6

The solution is **c₁ = 3**, **c₂ = 0**, so:  

3·[1, 2] + 0·[3, 4] = [3, 6] = V₃

Thus, **V₃** is a linear combination of **V₁** and **V₂**.



#### Features
- **Input Handling**: Accepts vectors and target vector via terminal input.
- **Augmented Matrix**: Constructs the augmented matrix for linear system solving.
- **Gaussian Elimination**: Performs row operations to reduce the matrix to row-echelon form.
- **Consistency Check**: Detects inconsistent systems (no solution).
- **Back-Substitution**: Solves for coefficients if the system is consistent.



##### 1. Running the Program
Execute the script in a Julia environment:
```bash
julia linear_combination.jl
