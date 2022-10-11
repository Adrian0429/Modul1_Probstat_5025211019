#6. Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

#a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
#Keterangan :
# X1 = Dibawah rata-rata
#X2 = Diatas rata-rata
#Contoh data :
#  1,2,4,2,6,3,10,11,5,3,6,8
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
#Contoh :
#312312312_Rola_Probstat_A_DNhistogram

hist(zScore, 
     breaks = 50,
     main="5025211019_Adrian Karuna Soetikno_Probstat A_DNhistogram")
     
#c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

