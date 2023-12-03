# Tugas 6 Praktikum : SUBQUERY DAN UNION

Dalam SQL terdapat perintah subquery dan union yang digunakan untuk mengambil data dari beberapa tabel menjadi satu query baru.

### SUBQUERY
Berikut merupakan perintah dari laporan

1. Menampilkan instructor yang belum pernah mengajar!
   ```
   select concat(ID,name) as profil
   from sampel_university.student;
   ````

2. Menampilkan course yang pernah diajar setidaknya 2 instructor!
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
