# Tugas 5 Praktikum : FUNGSI SKALAR DAN FUNGSI AGREGASI

Dalam SQL terdapat perintah ``` JOIN ``` yang digunakan untuk mengambil data dari beberapa tabel menjadi satu query baru.

### FUNGSI SKALAR
Berikut merupakan perintah dari laporan

1. Perintah CONCAT
   ```
   select concat(ID,name) as profil
   from sampel_university.student;
   ````

2. Perintah Substr.
    ```
    select substring_index(dept_name,' ',1) as DEPTNAME_INDEX
    from sampel_university.department;
    ```

3. Tampilkan nama student dan nama instructor yang bekerja pada department yang
sama
    ```
    SELECT student.name, department.dept_name, instructor.name
    FROM student
    JOIN department ON student.dept_name = department.dept_name
    JOIN instructor ON student.dept_name = instructor.dept_name
    WHERE student.dept_name = instructor.dept_name;
    ```
