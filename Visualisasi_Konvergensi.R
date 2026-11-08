hasil <- hasil_biseksi$tabel

plot(
  hasil$iterasi,
  hasil$c,
  type = "b",
  xlab = "Iterasi",
  ylab = "Estimasi akar",
  main = "Konvergensi Metode Biseksi"
)

abline(h = hasil_biseksi$akar, lty = 2)