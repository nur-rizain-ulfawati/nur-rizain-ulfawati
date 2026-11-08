cos_series <- function(x, n) {
  result <- 0
  
  for (k in 0:(n - 1)) {
    power <- 2 * k
    
    result <- result +
      (-1)^k * x^power / factorial(power)
  }
  
  return(result)
}

x <- 0.5

true_value <- 0.8775826

n <- 1:5

approximation <- sapply(
  n,
  function(k) cos_series(x, k)
)

error <- abs(true_value - approximation)

data.frame(
  jumlah_suku = n,
  aproksimasi = approximation,
  nilai_sebenarnya = true_value,
  galat_absolut = error
)