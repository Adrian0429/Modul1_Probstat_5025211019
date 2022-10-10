# 2. Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
# a. Peluang terdapat 4 pasien yang sembuh.

n <- 20
p  <- 0.2
x <- 4

paste("Peluang untuk terdapat 4 pasien yang sembuh adalah : ", dbinom(x,n,p))

#b. Gambarkan grafik histogram berdasarkan kasus tersebut.

x<- 0:20
plot(x, dbinom(x,n,p),
  type='h',
  main='Distribusi Binomial',
  ylab='Peluang',
  xlab = 'jumlah sampel')

#c. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.

rataan = n*p
varian = n*p*(1-p)
paste("Nilai dari Rataan (μ) : ", rataan)
paste("Nilai dari Varian (σ²) : ", varian)