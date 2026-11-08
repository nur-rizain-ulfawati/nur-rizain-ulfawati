for (x0 in c(0.5, 1, 1.5, 2, 3)) {
  
  hasil <- newton_raphson(
    f = f,
    f_prime = f_prime,
    x0 = x0
  )
  
  cat(
    "x0 =", x0,
    "| akar =", hasil$akar,
    "| iterasi =", hasil$iterasi,
    "\n"
  )
}