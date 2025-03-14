 # simulating random numbers based on the pdf below
 pmf_probs <- c(0.2, 0.5, 0.3)
 numbers <- 1:4
 random_numbers <- sample(numbers,size = 2, replace = FALSE, prob = pmf_probs)
 
random_numbers
 
# using the runif function
 random_numbers2 <- runif(100,1,3)
 random_numbers2
 
 