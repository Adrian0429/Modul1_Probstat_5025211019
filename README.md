# Modul1_Probstat_5025211019
## Praktikum Modul 1 probstat, Probstat A

1. Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya. 

    ##### a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)

    ```
    x <- 3
    p <- 0.2
    paste("Hasilnya : ", dgeom(x, p))
    ```
    ![image](https://user-images.githubusercontent.com/86884506/195301797-1d207f04-0b43-4888-9d46-924787b7163d.png)


    ##### b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 
    
    ```
    random <- 10000
    paste("peluang dari 10.000 data random adalah : ", mean(rgeom(random,p)==3) ) 
    ```
    ![image](https://user-images.githubusercontent.com/86884506/195302660-d4efbd62-d393-48e6-ace4-2df8440ac5b1.png)
    ![image](https://user-images.githubusercontent.com/86884506/195302300-86fc85cd-3452-490c-ab3a-01987bd948ab.png)

    ##### c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

    > berdasarkan hasil yang didapat, ternyata setelah program dijalankan lebih dari satu kali menghasilkan nilai yang berbeda-beda. hal ini disebabkan karena digunakannya variabel random pada program, sehingga hasil yang muncul berbeda tiap kali program dijalankan
    

    
    ##### d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
    ```
    hist(rgeom(random, p))
    ```
    ![Histogram nomor 1](https://user-images.githubusercontent.com/86884506/194886627-a1903fbe-b953-4306-945a-28f50c532c6e.png)
            
    ##### e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
    ```
    rataan = 1/p
    varian = (1-p)/p^2
    paste("nilai dari rataan (µ): ", rataan)
    paste("nilai dari varian (σ²): ", varian)
    ```
    ![image](https://user-images.githubusercontent.com/86884506/194886751-fab7f2d8-1808-4ebf-960c-905f39721f76.png)


2. Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

    ##### a. Peluang terdapat 4 pasien yang sembuh.
    ```
    diketahui :
    p = peluang sembuh = 0.2
    n = jumlah pasien = 20
    x = kejadian pasien sembuh = 4
    ```
    ```R
    n <- 20
    p  <- 0.2
    x <- 4
    paste("Peluang untuk terdapat 4 pasien yang sembuh adalah : ", dbinom(x,n,p))
    ```
    
   ![image](https://user-images.githubusercontent.com/86884506/194890610-fe675729-90c9-4aa1-a321-de07f2d06dee.png)

    ##### b. Gambarkan grafik histogram berdasarkan kasus tersebut.
    ```R
    x<- 0:20 
    plot(x, dbinom(x,n,p),
    type='h',
    main='Distribusi Binomial',
    ylab='Peluang',
    xlab = 'jumlah sampel')
    ```
    Histogram dari kasus diatas adalah sebagai berikut : 
    
    ![2 hist](https://user-images.githubusercontent.com/86884506/194889986-f4aad112-0cd8-492e-b3e5-817b504863cc.png)
    
    ##### c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
    ```R  
    rataan = n*p
    paste("Nilai dari Rataan (μ) : ", rataan)
    varian = n*p*(1-p)
    paste("Nilai dari Varian (σ²) : ", varian)
    ```
    
    ![image](https://user-images.githubusercontent.com/86884506/195310986-c42fe544-1ab0-43bd-8427-2dcfff444aa4.png)


3. Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
    
    ##### a.Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?       
    ```
    x<-6
    lambda<-4.5
    paste("Peluang akan lahir 6 bayi di rumah sakit ini besok adalah : ", dpois(x, lambda))
    ```

    ![image](https://user-images.githubusercontent.com/86884506/194895078-ad6b2a8b-b856-4301-b7d5-87633ca9d4bb.png)

    ##### b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)
    
    ```R
    set.seed(0)
    n<-365
    pois<-rpois(n,lambda)

    hist(pois,
    main ="Histogram Distribusi Poisson", 
    labels=T,
    ylab = 'Frekuensi',
    xlab = 'jumlah bayi')
    ```
    
    ![poisson](https://user-images.githubusercontent.com/86884506/194905274-01c6fa69-52d4-4d5a-a1f2-06f8bf46913f.png)

    ##### c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
    
    > Jika hasil dari poin a dikalikan dengan 365, maka hasilnya akan mendekati hasil pada poin b walaupun tidak sama persis.
    
    ##### d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson
    ```
    rataan=varian=lambda
    paste("Nilai Rataan (µ) : ", rataan)
    paste("Nilai Varian (σ²) : ", varian)
    ```
    
    ![image](https://user-images.githubusercontent.com/86884506/195311185-a683128e-c198-4bfa-b725-9864395664ff.png)

4. Diketahui nilai x = 2 dan v = 10. Tentukan:

    ##### a. Fungsi Probabilitas dari Distribusi Chi-Square.
    fungsi probabilitas dari Distribusi Chi-Square adalah : 
    ```
    x <- 2
    v <- 10
    dchisq(x,v,ncp = 0)
    ```
    
    ![image](https://user-images.githubusercontent.com/86884506/195046597-8556636e-a73e-45a9-9a5c-5c53f8786fd5.png)
    
    ##### b. Histogram dari Distribusi Chi-Square dengan 100 data random.
    ```R
    set.seed(0);
    n <- 100
    chi <- rchisq(100,v)

    hist(chi, 
    main="Distribusi Chi-Square (100 random data), 
    labels = T")
    ```     

    Histogram Chi-Square dari 100 data random adalah : 
    ![chisquare](https://user-images.githubusercontent.com/86884506/195047563-92427afd-9762-429b-831e-77e09c7db399.png)
    
    ##### c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.
    ```
    rataan=v
    paste("Nilai dari Rataan (μ): ", rataan)
    varian=2*v
    paste("Nilai dari Varian (σ²): ", varian)
    ```
    
    ![image](https://user-images.githubusercontent.com/86884506/195311416-f8a9685e-8456-4feb-9019-b6a04df19be2.png)


5. Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

    ##### a. Fungsi Probabilitas dari Distribusi Exponensial   
        digunakan sampel sebanyak n = 10, dengan λ = 3
        
        n<-10
        lambda <- 3
        paste("hasilnya adalah : ", rexp(n, rate = lambda))
        
        
      fungsi Distribusi Exponensial :
![image](https://user-images.githubusercontent.com/86884506/195048651-f8b5ef99-666d-41ee-8cb0-fa4a5fd07b69.png)

     ##### b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
    
        ``` 
        hist(rexp(10, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 10 bilangan random")
        hist(rexp(100, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 100 bilangan random")
        hist(rexp(1000, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 1000 bilangan random")
        hist(rexp(10000, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 10000 bilangan random")
        ```
    
   ![exp10](https://user-images.githubusercontent.com/86884506/195048882-7019f59b-512d-4e58-8319-dceebb323c9e.png)
      
   ![exp100](https://user-images.githubusercontent.com/86884506/195048914-e7332d97-2337-4f59-9814-3b057b4834ed.png)
      
   ![exp1000](https://user-images.githubusercontent.com/86884506/195048934-0f2043e2-a48d-4972-aab5-189d81d6a4dd.png)
      
   ![exp10000](https://user-images.githubusercontent.com/86884506/195048970-6f6da8cf-aab5-497a-bdba-9c0cf3fa56a8.png)

        
    ##### c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
  Petunjuk: 
  Gunakan set.seed(1)
  Gunakan fungsi bawaan R
  
    
    N <- 100
    set.seed(1)
    rataan = mean(rexp(N, rate = lambda))
    paste("Nilai Rataan(µ): ", rataan)
    varian = (sd(rexp(N, rate = lambda))) ^ 2
    paste("Nilai Varian(σ²): ", varian)
    
    
  ![image](https://user-images.githubusercontent.com/86884506/195311812-879a8458-63b6-4d0f-8dae-e76677d7700e.png)



 6. Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

   ##### a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
   
Keterangan : 
X1 = Dibawah rata-rata 
X2 = Diatas rata-rata
Contoh data :
1,2,4,2,6,3,10,11,5,3,6,8
rata-rata = 5.083333
X1 = 5
X2 = 6

   hasil dari Z-Score adalah : 
        
        n <- 100
        mean <- 50
        
        sd <- 8 
        
        zScore = rnorm(n, mean, sd)
        
        zScore
        
        plot (zScore)
        
        
        
![image](https://user-images.githubusercontent.com/86884506/195053524-c99efb22-f7ed-4f35-a1f5-5200db2922bf.png)
    
         
         
         
   hasil Plot : 
![plot 6](https://user-images.githubusercontent.com/86884506/195053594-163eab1c-0479-44d2-9562-212b54157ee7.png)


   ##### b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: 
    
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
Contoh :
312312312_Rola_Probstat_A_DNhistogram
    
    
    hist(zScore, 
    breaks = 50,
    main="5025211019_Adrian Karuna Soetikno_Probstat A_DNhistogram")
    
    
hasil generate histogram : 
![zscorehistoadrian](https://user-images.githubusercontent.com/86884506/195058806-09dc5340-4a78-4381-b82a-e98679f267f3.png)

   ##### c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
   
        varian=sd*sd
        paste("Nilai dari Varian (σ²) adalah : ", varian)
        
   ![image](https://user-images.githubusercontent.com/86884506/195311975-45304de6-82fb-4297-a265-ecc1697a168d.png)

