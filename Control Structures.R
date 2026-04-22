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

#Nested for-loop to access values in matrices
x <- matrix(1:6, 2, 3)

for (i in seq_len(nrow(x))){
  for (j in seq_len(ncol(x))){
    print (x[c(i,j)])
  }
}

#While-loops
count <- 0
while (count < 10){
  print(count)
  count <- count + 1
}

# repeat, break

# repeat{ ## infinite loop
    # if(condition){
        #break
    #}
#}

# next
for (i in 1:100){
  if (i <= 20){}
    next
}