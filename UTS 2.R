x <- c(0, 1, 2, 3)
y <- c(1, 2, 5, 10)

lagrange <- function(x, y, x0) {
  n <- length(x)
  hasil <- 0
  
  for (i in 1:n) {
    L <- 1
    
    for (j in 1:n) {
      if (i != j) {
        L <- L * (x0 - x[j]) / (x[i] - x[j])
      }
    }
    
    hasil <- hasil + y[i] * L
  }
  
  return(hasil)
}

x0 <- c(0.5, 1.5, 2.5)

P <- sapply(x0, function(z) lagrange(x, y, z))

f <- x0^2 + 1

galat <- abs(P - f)

hasil <- data.frame(
  x = x0,
  P_x = P,
  f_x = f,
  Galat_Absolut = galat
)

print(hasil)