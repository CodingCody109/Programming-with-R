add2 <- function(x, y){
  x + y # the function returns the last expression
}

above <- function(x,n = 10){ #default value of n
  use <- x > n
  x[use] 
}

#return the means of each column in a matrix
means <- function(matrix, removeNA = TRUE){
  means <- numeric(ncol(matrix))
  nc <- ncol(matrix)
    for (i in 1:nc){
      means[i] <- mean(y[,c], na.rm = removeNA)
    }
  means
}

# ... used when extending functions when don't want to copy the entire set of
# arguments
myplot <- function(x, y, type = "1", ...){
  plot (x, y, type = type, ...)
}

#... also used in functions like paste function that doesn't know how many
# arguments there will be in advance

# If you define a function with a name, and there are existing functions in packages
# with the same name (e.g. lm() in stats package)
# R will search in the global environment first and use the function you
# have defined in priority. 

# When loading a package, the package is moved to the second place in 
# search() function

# The workspace is the global environment, the space inside a function is
# a children environment of the global environment. 
# In R, functions can be defined inside a function. In that case, the inner
# function's environment is the children environment of the outer function's, 
# which is the children environment of the global environment

make.power <- function(n){
  pow <- function(x){
     x^n # *
  }
  pow
}

cube = make.power(3) # *n is not defined in pow() (free variable),
# but R searches in the parent environment and found n as an argument
# of make.power

cube(2)

ls(environment(cube)) # see the environment (symbol - value pairs) in cube()

y <- 10

f <- function(x){
  y <- 2
  y^2 + g(x)
}

g <- function(x){
  x*y
}

print (f(3))
# lexical scoping (R): 2^2 + 3*10, y = 10 from the parent environment
# Dynamic scoping: 2^2 + 3*2, y = 2 from the environment in which g() was called