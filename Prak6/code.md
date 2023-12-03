# Tugas 6 Praktikum : SUBQUERY DAN UNION

Dalam SQL terdapat perintah subquery yang digunakan untuk menggabungkan hasil kueri sekunder ke dalam kueri utama dan union yang digunakan untuk menggabungkan hasil dari dua atau lebih kueri SELECT menjadi satu set hasil tunggal.

### SUBQUERY
Berikut merupakan perintah dari laporan

1. Menampilkan instructor yang belum pernah mengajar!
   ```
   SELECT ID, name
   FROM instructor
   WHERE ID NOT IN (SELECT DISTINCT ID FROM teaches);
   ````
   Pada instruksi ini, kita diminta menggunakan ```WHERE``` dimana berfungsi untuk memperoleh
   nilai atau data terkait dari tabel lain berdasarkan kondisi tertentu.
   
2. Menampilkan course yang pernah diajar setidaknya 2 instructor!
    ```
    SELECT course_id, title
    FROM course
    WHERE course_id IN (
    SELECT course_id
    FROM teaches
    GROUP BY course_id
    HAVING COUNT(DISTINCT ID) >= 2
    );
    ```
### UNION
4. Perintah Substr.
    ```
    select substr(dept_name,1,3) as KARAKTER
    from sampel_university.department;
    ```
5. Perintah TOTAL_CHAR.
    ```
    select title,length (title) as TOTAL_CHAR
    from sampel_university.course;
    ```
6. Perintah REPLACE.
    ```
    select name, replace (name,'JONO','BUDI') as NAMA_BARU
    from akademik.mahasiswa ;
    ```
