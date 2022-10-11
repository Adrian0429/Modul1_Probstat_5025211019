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