#1.Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

#a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
#sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
#(distribusi Geometrik)


x <- 3
p <- 0.2
paste("Hasilnya : ", dgeom(x-1, p))

#b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
#geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

random <- 10000
mean(rgeom(random,p)==3)

#c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

#d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
hist(rgeom(random, p))

#e. Nilai Rataan (µ) dan Varian (σ²) dari Distribusi Geometrik.

rataan = 1/p
varian = (1-p)/p^2

paste("nilai dari rataan (µ): ", rataan)
paste("nilai dari varian (σ²): ", varian)