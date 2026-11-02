true_value <- exp(x)

error <- abs(true_value - approximation)

data.frame(
  n = n,
  approximation = approximation,
  error = error
)