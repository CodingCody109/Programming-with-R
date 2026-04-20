# if-else in R

y <- if (x > 3){
  10
} else {
  3
}

# for-loop in R
for (i in 1:10){
  print (i)
}

x <- c("a", "b", "c", "d")

for (i in 1:4){
  print (x[i])
}

for (i in seq_along(x)){
  print (x[i])
}

for (letter in x){
  print (letter)
}

for (i in 1:4) print(x[i])