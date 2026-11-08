f_baru <- function(x) {
  cos(x) - x
}
hasil <- bisection(
  f = f_baru,
  a = 0,
  b = 1
)
hasil$akar