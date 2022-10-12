#1.Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

#a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
#sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
#(distribusi Geometrik)


x <- 3
p <- 0.2
paste("Hasilnya : ", dgeom(x, p))

#b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
#geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )

random <- 10000
paste("peluang dari 10.000 data random adalah : ", mean(rgeom(random,p)==3) ) 

#c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

#d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
hist(rgeom(random, p))

#e. Nilai Rataan (µ) dan Varian (σ²) dari Distribusi Geometrik.

rataan = 1/p
varian = (1-p)/p^2

paste("nilai dari rataan (µ): ", rataan)
paste("nilai dari varian (σ²): ", varian)

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
paste("Nilai dari Rataan (μ) adalah : ", rataan)
varian = n*p*(1-p)
paste("Nilai dari Varian (σ²) adalah : ", varian)

#3. Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

#a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?

x<-6
lambda<-4.5
paste("Peluang akan lahir 6 bayi di rumah sakit ini besok adalah : ", dpois(x, lambda))

#b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)

set.seed(0)
n<-365
pois<-rpois(n,lambda)

hist(pois,
     main ="Histogram Distribusi Poisson", 
     labels=T,
     ylab = 'Frekuensi',
     xlab = 'jumlah bayi')

#c. bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan?

#d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.

rataan=varian=lambda
paste("Nilai dari Rataan (µ) adalah : ", rataan)
paste("Nilai dari Varian (σ²) adalah : ", varian)

#Diketahui nilai x = 2 dan v = 10. Tentukan:

#a. Fungsi Probabilitas dari Distribusi Chi-Square.

x <- 2
v <- 10
dchisq(x,v,ncp = 0)

#b. Histogram dari Distribusi Chi-Square dengan 100 data random.
set.seed(0);
n <- 100
chi <- rchisq(100,v)

hist(chi, 
     main="Distribusi Chi-Square (100 random data), 
     labels = T")

#c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.

rataan=v
paste("Nilai dari Rataan (μ) adalah : ", rataan)
varian=2*v
paste("Nilai dari Varian (σ²) adalah : ", varian)

#5. Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

#a. Fungsi Probabilitas dari Distribusi Exponensial 

n<-10
lambda <- 3
paste("hasilnya adalah : ", rexp(n, rate = lambda))

#b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random

hist(rexp(10, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 10 bilangan random")
hist(rexp(100, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 100 bilangan random")
hist(rexp(1000, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 1000 bilangan random")
hist(rexp(10000, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 10000 bilangan random")

#c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
#Petunjuk: 
#Gunakan set.seed(1)
#Gunakan fungsi bawaan R

N <- 100
set.seed(1)
rataan = mean(rexp(N, rate = lambda))
paste("Nilai Rataan(µ): ", rataan)
varian = (sd(rexp(N, rate = lambda))) ^ 2
paste("Nilai Varian(σ²): ", varian)

#6. Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

#a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).

#Keterangan : 
#X1 = Dibawah rata-rata 
#X2 = Diatas rata-rata
#Contoh data : 1,2,4,2,6,3,10,11,5,3,6,8
#rata-rata = 5.083333
#X1 = 5
#X2 = 6

n <- 100
mean <- 50
sd <- 8 
zScore = rnorm(n, mean, sd)

zScore
plot (zScore)

#b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: 
#NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
#Contoh : 312312312_Rola_Probstat_A_DNhistogram

hist(zScore, 
     breaks = 50,
     main="5025211019_Adrian Karuna Soetikno_Probstat A_DNhistogram")

#c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

varian=sd*sd
paste("Nilai dari Varian (σ²) adalah : ", varian)