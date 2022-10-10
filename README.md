# Modul1_Probstat_5025211019
## Praktikum Modul 1 probstat, Probstat A

1. Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya. 

    ##### a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)

    ```
    x <- 3
    p <- 0.2
    paste("Hasilnya : ", dgeom(x-1, p))
    ```
    ![image](https://user-images.githubusercontent.com/86884506/194884537-c37f8693-b78b-4821-9bb1-c8e2267a463b.png)


    ##### b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 
    
    ```
    random <- 10000
    mean(rgeom(random,p)==3)
    ```
    ![image](https://user-images.githubusercontent.com/86884506/194884738-0536b295-3b83-49be-a0e2-95e815397c16.png)  
    ![image](https://user-images.githubusercontent.com/86884506/194884778-e04c6293-046f-4046-910d-e7b37253f56d.png)

    ##### c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?

    > berdasarkan hasil yang didapat, ternyata setelah program dijalankan lebih dari satu kali menghasilkan nilai yang berbeda-beda. hal ini disebabkan karena digunakannya variabel random pada program, sehingga hasil yang muncul berbeda tiap kali program dijalankan
    

    
    ##### d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
    ![Histogram nomor 1](https://user-images.githubusercontent.com/86884506/194886627-a1903fbe-b953-4306-945a-28f50c532c6e.png)
            
    ##### e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
    ![image](https://user-images.githubusercontent.com/86884506/194886751-fab7f2d8-1808-4ebf-960c-905f39721f76.png)


2. Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

    ##### a. Peluang terdapat 4 pasien yang sembuh.
   ![image](https://user-images.githubusercontent.com/86884506/194890610-fe675729-90c9-4aa1-a321-de07f2d06dee.png)

    ##### b. Gambarkan grafik histogram berdasarkan kasus tersebut.
    Histogram dari kasus diatas adalah sebagai berikut : 
    ![2 hist](https://user-images.githubusercontent.com/86884506/194889986-f4aad112-0cd8-492e-b3e5-817b504863cc.png)

    
    ##### c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
    ![image](https://user-images.githubusercontent.com/86884506/194890081-eaaee012-5cd8-47e4-9018-a4d4c22bd6f9.png)


3. Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

    ##### a.Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
    ![image](https://user-images.githubusercontent.com/86884506/194895078-ad6b2a8b-b856-4301-b7d5-87633ca9d4bb.png)

    ##### b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini  selama setahun (n = 365)
    ![poisson](https://user-images.githubusercontent.com/86884506/194905274-01c6fa69-52d4-4d5a-a1f2-06f8bf46913f.png)

    c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
    >
    
    d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
    ![image](https://user-images.githubusercontent.com/86884506/194905405-45633e26-d5e2-44e0-b7e4-fae0384f3af1.png)

4. Diketahui nilai x = 2 dan v = 10. Tentukan:

    a. Fungsi Probabilitas dari Distribusi Chi-Square.
    
    b. Histogram dari Distribusi Chi-Square dengan 100 data random.
    
    c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.

5. Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

    a. Fungsi Probabilitas dari Distribusi Exponensial 
    
    b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
    
    c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
    
  Petunjuk: 
  Gunakan set.seed(1)
  Gunakan fungsi bawaan R

6. Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

    a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
Keterangan : 
X1 = Dibawah rata-rata 
X2 = Diatas rata-rata
Contoh data :
1,2,4,2,6,3,10,11,5,3,6,8
rata-rata = 5.083333
X1 = 5
X2 = 6


    b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: 
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
Contoh :
312312312_Rola_Probstat_A_DNhistogram

    c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

