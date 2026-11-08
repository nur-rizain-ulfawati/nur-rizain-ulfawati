fixed_point <- function(g, x0,
                        tol = 1e-6,
                        max_iter = 100) {
  
  hasil <- data.frame(
    iterasi = integer(),
    x_n = numeric(),
    x_next = numeric(),
    error = numeric()
  )
  
  x <- x0
  
  for (i in 1:max_iter) {
    
    x_next <- g(x)
    
    error <- abs(x_next - x)
    
    hasil <- rbind(
      hasil,
      data.frame(
        iterasi = i,
        x_n = x,
        x_next = x_next,
        error = error
      )
    )
    
    if (error < tol) {
      break
    }
    
    x <- x_next
  }
  
  list(
    akar = x_next,
    iterasi = i,
    tabel = hasil
  )
}