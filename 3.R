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
paste("Nilai Rataan (µ) : ", rataan)
paste("Nilai Varian (σ²) : ", varian)

