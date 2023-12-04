# Tugas 5 Praktikum : FUNGSI SKALAR DAN FUNGSI AGREGASI

Dalam SQL terdapat perintah fungsi skalar dan fungsi agregasi yang digunakan untuk mengambil data dari beberapa tabel menjadi satu query baru.

### FUNGSI SKALAR
Berikut merupakan perintah dari laporan

1. Perintah CONCAT
   Fungsi ini untuk menghitung jumlah baris pada kolom yang dipanggil dalam suatu kumpulan hasil
   (tabel baru)
   ```
   select concat(ID,name) as profil
   from sampel_university.student;
   ````

2. Perintah SUBSTR_INDEX
   Fungsi ini digunakan untuk mendapatkan sejumlah substring dari suatu string berdasarkan
   ```
    select substring_index(dept_name,' ',1) as DEPTNAME_INDEX
    from sampel_university.department;
    ```

3. Perintah Substr.
   Fungsi ini untuk mengetahui panjang (jumlah karakter) dari suatu string.
    ```
    select substr(dept_name,1,3) as KARAKTER
    from sampel_university.department;
    ```
4. Perintah TOTAL_CHAR.
   Fungsi ini untuk mengetahui panjang (jumlah karakter) dari suatu string.
    ```
    select title,length (title) as TOTAL_CHAR
    from sampel_university.course;
    ```
6. Perintah REPLACE.
   Fungsi ini digunakan untuk mengganti suatu substring dalam string dengan
   substring lainnya.
    ```
    select name, replace (name,'JONO','BUDI') as NAMA_BARU
    from akademik.mahasiswa ;
    ```
