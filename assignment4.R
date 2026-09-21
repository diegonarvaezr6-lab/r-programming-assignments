# Assignment 4 - Working with Matrices in R
# Diego Narvaez

# Create matrices
A <- matrix(1:100, nrow = 10)
B <- matrix(1:1000, nrow = 10)

# Check dimensions
dim(A)
dim(B)
# Compute inverse and determinant for A
invA <- tryCatch(
  solve(A),
  error = function(e) e
)

detA <- tryCatch(
  det(A),
  error = function(e) e
)

invA
detA
# Compute inverse and determinant for B
invB <- tryCatch(
  solve(B),
  error = function(e) e
)

detB <- tryCatch(
  det(B),
  error = function(e) e
)

invB
detB