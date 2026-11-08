sin_series <- function(x, n) {
  result <- 0
  
  for (k in 0:(n-1)) {
    power <- 2 * k + 1
    
    result <- result +
      (-1)^k * x^power / factorial(power)
  }
  
  return(result)
}

aprox_3 <- sin_series(0.7, 3)
aprox_4 <- sin_series(0.7, 4)
aprox_5 <- sin_series(0.7, 5)

nilai_sin <- sin(0.7)

error_3 <- abs(nilai_sin - aprox_3)
error_4 <- abs(nilai_sin - aprox_4)
error_5 <- abs(nilai_sin - aprox_5)

data.frame(
  jumlah_suku = c(3, 4, 5),
  aproksimasi = c(aprox_3, aprox_4, aprox_5),
  nilai_sin_R = nilai_sin,
  galat_absolut = c(error_3, error_4, error_5)
)