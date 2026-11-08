f <- function(x) exp(-x) + x - 2

x <- seq(0, 3, by = 0.01)
y <- f(x)

plot(x, y, 
     type = "l", 
     col = "lightblue", 
     lwd = 2,
     main = "Grafik f(x) = e^(-x) + x - 2",
     xlab = "x", 
     ylab = "f(x)")

abline(h = 0, col = "black", lty = 2)
abline(v = 0, col = "black", lty = 2)

points(1.841406, 0, col = "hotpink", pch = 19, cex = 1.2)
text(1.841406, 0.3, labels = "Akar ≈ 1,841406", col = "hotpink")