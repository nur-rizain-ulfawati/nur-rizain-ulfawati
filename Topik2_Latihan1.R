exp_series <- function(x, n) {
  result <- 0
  
  for (k in 0:(n-1)) {
    result <- result + x^k / factorial(k)
  }
  
  return(result)
}

true_value <- exp(0.8)

aprox_3  <- exp_series(0.8, 3)
aprox_5  <- exp_series(0.8, 5)
aprox_10 <- exp_series(0.8, 10)

error_3  <- abs(true_value - aprox_3)
error_5  <- abs(true_value - aprox_5)
error_10 <- abs(true_value - aprox_10)

data.frame(
  jumlah_suku = c(3, 5, 10),
  aproksimasi = c(aprox_3, aprox_5, aprox_10),
  nilai_sebenarnya = true_value,
  galat_absolut = c(error_3, error_5, error_10)
)