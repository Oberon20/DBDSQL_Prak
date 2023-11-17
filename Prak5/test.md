# Tugas 5 Praktikum : FUNGSI SKALAR DAN FUNGSI AGREGASI

Dalam SQL terdapat perintah ``` JOIN ``` yang digunakan untuk mengambil data dari beberapa tabel menjadi satu query baru.

### FUNGSI SKALAR
Berikut merupakan perintah dari laporan

1. Perintah CONCAT
   ```
   select concat(ID,name) as profil
   from sampel_university.student;
   ````

2. Perintah SUBSTR_INDEX
    ```
    select substring_index(dept_name,' ',1) as DEPTNAME_INDEX
    from sampel_university.department;
    ```

3. Perintah Substr.
    ```
    select substr(dept_name,1,3) as KARAKTER
    from sampel_university.department;
    ```
4. Perintah TOTAL_CHAR.
    ```
    select title,length (title) as TOTAL_CHAR
    from sampel_university.course;
    ```
5. Perintah REPLACE.
    ```
    select name, replace (name,'JONO','BUDI') as NAMA_BARU
    from akademik.mahasiswa ;
    ```
