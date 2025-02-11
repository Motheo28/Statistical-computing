# grenerating the data points
set.seed(1)
x <- seq(1,100) 

#generate Y as a noisy sine wave
n = 100
ei <- rnorm(n, mean = 0, sd = 0.2^2)
y <- c()  
for (i in 1:100) {
  y[i] = sin(x[i]/10)+ei
}

#for testing set f to be 0.5
f = 0.5
#Building the lowess function
customLowess <- function(x, y, f) {
  
  n = length(x)
  k = round(f*n)
# finding the neighbours    
  x_neighbour <- c()
  for (j in 1:n) {
    x_j <- x[j]
    dist <- abs(x - x_i)
    dist_sort <- sort(dist)
    x_neighbour = dist_sort[1:k]
  }
#Calculate weights on neighbours  
  d_max <- x_neighbour[k]
  weights_n <- c()
  for (m in 1:k) {
    w_i <- (1-(x_neighbour[m]/d_max)^3)^3
    weights_n[m] = w_i
  }
  d_max <- x_neighbour[k]
  W <- diag(weights_n)
  
#fit regression

}