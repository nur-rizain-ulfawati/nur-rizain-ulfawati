deret_taylor <- function(x) {
  x -
    x^3 / factorial(3) +
    x^5 / factorial(5) -
    x^7 / factorial(7)
}
x <- 0.5
hasil <- deret_taylor(x)

print(hasil)

hasil <- deret_taylor(x)

print(hasil)

galat <- abs(nilai_asli - hasil)

print(galat)

cat("Nilai x =", x, "\n")
cat("Hasil Deret Taylor =", hasil, "\n")
cat("Nilai sin(x) sebenarnya =", nilai_asli, "\n")
cat("Galat =", galat, "\n")