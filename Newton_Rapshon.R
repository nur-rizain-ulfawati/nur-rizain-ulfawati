f_prime <- function(x) {
  3*x^2 - 1
}
newton_raphson <- function(f, f_prime, x0,
                           tol = 1e-6,
                           max_iter = 100) {
  
  hasil <- data.frame(
    iterasi = integer(),
    x = numeric(),
    f_x = numeric(),
    error = numeric()
  )
  
  x <- x0
  
  for (i in 1:max_iter) {
    
    fx <- f(x)
    dfx <- f_prime(x)
    
    if (abs(dfx) < 1e-12) {
      stop("Turunan terlalu dekat dengan nol.")
    }
    
    x_new <- x - fx / dfx
    error <- abs(x_new - x)
    
    hasil <- rbind(
      hasil,
      data.frame(
        iterasi = i,
        x = x_new,
        f_x = f(x_new),
        error = error
      )
    )
    
    if (error < tol) {
      x <- x_new
      break
    }
    
    x <- x_new
  }
  
  list(
    akar = x,
    iterasi = i,
    tabel = hasil
  )
}
hasil_newton <- newton_raphson(
  f = f,
  f_prime = f_prime,
  x0 = 1.5,
  tol = 1e-6
)
hasil_newton$akar
hasil_newton$tabel