#Test practice
#Question 1 

# Given data
x <- c(3.91, 4.85, 2.28, 4.06, 3.70, 4.04, 5.46, 3.53, 2.28, 1.96, 
       2.53, 3.88, 2.22, 3.47, 4.82, 2.46, 2.99, 2.54, 0.52, 2.50)
n <- length(x)
theta_vals <- seq(-pi, pi, length.out = 100)  # Generate theta values for plotting

# Define the probability density function (PDF)
pdf_func <- function(x, theta) {
  (1 - cos(x - theta)) / (2 * pi)
}

# Define the log-likelihood function
log_likelihood <- function(theta, x) {
  sum(log(pdf_func(x, theta)))  # Sum log-probabilities
}

# Compute log-likelihood for different theta values
log_likelihood_values <- sapply(theta_vals, log_likelihood, x = x)

# Plot log-likelihood function
plot(theta_vals, log_likelihood_values, type = "l", col = "blue",
     main = "Log-Likelihood vs Theta",
     xlab = expression(theta), ylab = "Log-Likelihood")
