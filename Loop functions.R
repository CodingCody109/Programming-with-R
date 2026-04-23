# lapply()
# Loop over a list and evaluate a function on each element

x <- list (a = 1:5, b = rnorm(10))
lapply(x, mean)

# Generate random numbers in a range
x <- 1:4
lapply(x, runif, min = 1, max = 10)

# anonymous function
x <- list(a = matrix(1:6, 2, 3), b = matrix(1:4, 2, 2))
lapply(x, function(elt) elt[,1])

# sapply() returns a vector when the result list has all elements of length 1
# returns a matrix if the length of vectors in the list are all the same


# apply()
# apply a function (usually an anonymous one like mean()) over the margin of a matrix

x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean) # over the second dimension and collapse the first dimension -> column means
# Shortcuts
rowSums(x)
rowMeans(x)
colSums(x)
colMeans(x)
apply(x, 1, quantile, probs = c(0.25, 0.75)) # 25% - 75% values in each row

# 3D matrix
a <- array (rnorm(400), c(2,2,10))
apply(a, c(1,2), mean)
rowMeans(a, dims = 2)

# mapply()
# apply a function that requires multiple arguments over elements in multiple lists
noise <- function (n, mean = 0, sd = 1){
  rnorm(n, mean, sd)
}

mapply(noise, 1:5, 1:5, 2) # fix sd to be two, generate 1 random number with mean 1, two random numbers with mean 2...

#tapply()
#Take group means in a single list

x <- c(rnorm(10), runif(10), rnorm(10, 1)) # a list that contains 3 subgroups
f <- gl(3, 10) # create ten 1's. ten 2's, and ten 3's; tells tapply() how to determine the groups
tapply(x, f, mean)
tapply(x, f, range)

# If just want to split the groups without applying functions
# Use split()
split(x, f)

# Splitting a data frame
# s <- split(airQuality, airQuality$Month)
# sapply (s, function(x) colMeans(x[,c"Ozone", "Solar.R", "Wind"]))

# Split by more than one factors(interaction())
x <- c(rnorm(10))
f1 <- gl(2,5)
f2 <- gl(5,2)

split(x, list(f1, f2), drop = TRUE)

# In the result, for example, $ 1.2 would refer to the elements labeled 1
# in f1 grouping and 2 in f2 grouping, drop = TRUE removes empty vectors


