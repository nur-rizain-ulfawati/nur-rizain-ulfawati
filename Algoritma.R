F <- function(x) {
  c(
    x[1]^2 + x[2]^2 - 4,
    x[1]^2 - x[2] - 1
  )
}
J <- function(x) {
  matrix(
    c(
      2*x[1], 2*x[2],
      2*x[1], -1
    ),
    nrow = 2,
    byrow = TRUE
  )
}
x <- c(1, 1)

F(x)
J(x)
delta <- solve(
  J(x),
  -F(x)
)

delta
x_new <- x + delta