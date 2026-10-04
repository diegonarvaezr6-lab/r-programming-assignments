# Assignment #6: Matrix Operations and Construction
# Diego Narvaez

# Task 1: Matrix Addition & Subtraction

A <- matrix(c(2, 0, 1, 3), ncol = 2)
B <- matrix(c(5, 2, 4, -1), ncol = 2)

A
B

A + B
A - B
# Task 2: Create a Diagonal Matrix

D <- diag(c(4, 1, 2, 3))

D

# Task 3: Construct a Custom 5x5 Matrix

M <- matrix(c(
  3, 1, 1, 1, 1,
  2, 3, 0, 0, 0,
  2, 0, 3, 0, 0,
  2, 0, 0, 3, 0,
  2, 0, 0, 0, 3
), nrow = 5, byrow = TRUE)

M