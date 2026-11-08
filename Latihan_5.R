maclaurin <- function(x, max_iter) {
  
  hasil <- 1
  suku <- 1
  
  jumlah_suku <- 1:max_iter
  galat_absolut <- numeric(max_iter)
  
  for (i in 1:max_iter) {
    
    suku <- suku * x / i
    hasil <- hasil + suku
    
    galat_absolut[i] <- abs(exp(x) - hasil)
  }
  
  plot(jumlah_suku, galat_absolut,
       type = "b",
       log = "y",
       xlab = "Jumlah Suku",
       ylab = "Galat Absolut",
       main = "Hubungan Jumlah Suku dan Galat Absolut")
  
  return(data.frame(jumlah_suku, galat_absolut))
}

maclaurin(1, 20)