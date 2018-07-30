#Q. Create an m x n matrix with replicate(m, rnorm(n)) with m=10 column vectors of n=10 elements each, constructed with rnorm(n), which creates random normal numbers.
#Then we transform it into a dataframe (thus 10 observations of 10 variables) and perform an algebraic operation on each element using a nested for loop: at each iteration, every element referred by the two indexes is incremented by a sinusoidal function, compare the vectorized and non-vectorized form of creating the solution and report the system time differences.

#Non-Vectorized form
set.seed(41)
m = 10
n = 10


matrix <- replicate(m, rnorm(n))
matrix_df <- data.frame(matrix)
matrix_df-----#Applying nested loop along with syste time
  
  system.time(for (i in 1:m) {
    for (j in 1:n)
      matrix_df [i, j] <- matrix_df [i, j] + 10 * sin(0.50 * pi)
  })
matrix_df

#Vectorized form

set.seed(41)
m = 10
n = 10


matrix <- replicate(m, rnorm(n))
matrix_df <- data.frame(matrix)
matrix_df

system.time(matrix_df <- matrix_df  + 10 * sin(0.50 * pi))
matrix_df