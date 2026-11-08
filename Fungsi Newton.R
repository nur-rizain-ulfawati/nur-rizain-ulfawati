newton_spnl <- function(F, J, x0,
                        tol = 1e-8,
                        max_iter = 100) {
  
  x <- x0
  
  for (k in 1:max_iter) {
    
    Fx <- F(x)
    Jx <- J(x)
    
    delta <- solve(Jx, -Fx)
    
    x_new <- x + delta
    
    if (sqrt(sum((x_new - x)^2)) < tol) {
      x <- x_new
      break
    }
    
    x <- x_new
  }
  
  return(x)
}

hasil <- newton_spnl(
  F = F,
  J = J,
  x0 = c(1, 1)
)

hasil$solution
hasil$iterations
hasil$iterations