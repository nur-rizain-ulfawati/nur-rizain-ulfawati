x <- c(1, 2, 4, 5)
y <- c(2, 3, 5, 8)
approx(
  x,
  y,
  xout = 3
)
approx(
  x,
  y,
  xout = c(1.5, 2.5, 3, 3.5)
)