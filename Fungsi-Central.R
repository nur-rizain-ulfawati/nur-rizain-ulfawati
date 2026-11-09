central_difference <- function(f, x, h) {
  (f(x + h)-f(x-h)) / (2*h)
}

f <- function(x) {
  x^2
}

central_difference(f, 2, 0.1)