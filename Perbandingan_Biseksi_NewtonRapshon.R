perbandingan <- data.frame(
  metode = c("Biseksi", "Newton-Raphson"),
  iterasi = c(
    hasil_biseksi$iterasi,
    hasil_newton$iterasi
  ),
  akar = c(
    hasil_biseksi$akar,
    hasil_newton$akar
  )
)
perbandingan