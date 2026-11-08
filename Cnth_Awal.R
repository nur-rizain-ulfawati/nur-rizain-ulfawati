f <- function(x) {
  x^3 - x - 2
}

f(1)
f(2)

curve(
  f(x), from = 0, to = 2,
  xlab = "x", ylab = "f(x)",
  main = "f(x) = x^3 - x - 2"
)

abline(h = 0, lty = 2)