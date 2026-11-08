
exp_series <- function(x, n) {
  
  result <- 0
  
  for (k in 0:n) {
    result <- result + x^k / factorial(k)
  }
  
  return(result)
}

exp_series(0.5, 5)

x <- 0.5

n <- 0:10

approximation <- sapply(
  n,
  function(k) exp_series(x, k)
)

data.frame(
  n = n,
  approximation = approximation
)

true_value <- exp(x)

error <- abs(true_value - approximation)

data.frame(
  n = n,
  approximation = approximation,
  error = error
)

plot(
  n,
  error,
  type = "b",
  log = "y",
  xlab = "Orde polinom",
  ylab = "Galat absolut",
  main = "Konvergensi Deret Maclaurin untuk exp(x)"
)