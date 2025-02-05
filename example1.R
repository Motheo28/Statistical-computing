?sum

x<- 1:5
x= 1:5
sum(x)

msg <- "1:5"
msg

class(x)
class(msg)

4+2
4/3

c(1,4)

x<- 1
x_vec <- 1:5 
length(x_vec)
x_vec + 1
x_vec + c(1,2)
x_vec + c(1,2,3,4,5)

y_vec <- c(1:5)
x_vec* y_vec

x_vec[2]*y_vec[2]

y_vec <-setNames(y_vec, letters[1:5])

y_vec[-2]
y_vec[-c(1:3)]
y_vec[[]]

letters[1:2]
letters[13]
c(TRUE,FALSE)

example_mat <- matrix(1:4, ncol = 2)
matrix(c("a", 1:3), ncol = 2)
matrix(c(TRUE, TRUE, TRUE, TRUE), ncol = 2)

dim(example_mat)
length(example_mat)
 
cbind(1:2, 3:4) |> class()
class(cbind(1:2, 3:4))
