maclaurin_exp <- function(x, toleransi, max_iter) {
  hasil <- 1
  suku <- 1
  iterasi <- 0
  
  repeat {
    iterasi <- iterasi + 1
    suku <- suku * x / iterasi
    hasil_baru <- hasil + suku
    
    galat <- abs(hasil_baru - hasil)
    hasil <- hasil_baru
    
    if (galat < toleransi || iterasi >= max_iter) {
      break
    }
  }
  
  return(list(
    hasil = hasil,
    iterasi = iterasi,
    galat = galat
  ))
}
maclaurin_exp(1, 0.00001, 100)