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
1. Lakukan perintah Insert seperti yang ada pada Perintah 6.7 untuk menambahkan
   data pada table Mahasiswa
   ```
   INSERT INTO AKADEMIK.MAHASISWA
   VALUES('155150404', 1,212,'JESSY',2016,'1999-2-10','BANDUNG','F'),
   ('155150405', 2 ,219,'BAMBANG',2014,'1996-9-27','MAKASSAR','M');
   ```
   ![INSERT](https://github.com/Oberon20/DBDSQL_Prak/assets/133186338/4e125189-4077-4cde-8010-ff65e331c86b)

2. Lakukan perintah DDL seperti yang ada pada Perintah 6.8 untuk membuat sebuah table baru
   Mahasiswa_Pindahan.
   ```
   CREATE TABLE AKADEMIK.MAHASISWA_PINDAHAN(
   NIM VARCHAR(15) NOT NULL PRIMARY KEY,
   ID_SELEKSI_MASUK SMALLINT,
   FOREIGN KEY (ID_SELEKSI_MASUK) REFERENCES
   AKADEMIK.SELEKSI_MASUK(ID_SELEKSI_MASUK),
   ID_PROGRAM_STUDI SMALLINT,
   FOREIGN KEY (ID_PROGRAM_STUDI) REFERENCES
   AKADEMIK.PROGRAM_STUDI(ID_PROGRAM_STUDI),
   NAMA VARCHAR(45),
   ANGKATAN SMALLINT,
   TGL_LAHIR DATE,
   KOTA_LAHIR VARCHAR(60),
   JENIS_KELAMIN CHAR(1) CHECK (JENIS_KELAMIN IN ('M','F'))
   );
   ```
   ![CREATE](https://github.com/Oberon20/DBDSQL_Prak/assets/133186338/e7f1f6df-2f55-49d8-a2cd-797dab36cdbd)

3. Lakukan perintah Insert seperti yang ada pada Perintah 6.9 untuk menambahkan data pada
   table Mahasiswa_Pindahan.
   ```
   INSERT INTO AKADEMIK.MAHASISWA_PINDAHAN
   VALUES ('155150500', 1 ,211,'BUDI', 2015,'1997-3-3','BANYUWANGI','M'),
   ('155150501', 2,212,'ANDI',2015,'1997-2-21','JAKARTA','M'),
   ('155150502', 2 ,211,'DIMAS', 2015,'1998-4-11','SURABAYA','M'),
   ('155150503', 2 ,211,'DIDIN',2015,'1997-2-26','BANDUNG','M');
   ```
   ![INSERT(2)](https://github.com/Oberon20/DBDSQL_Prak/assets/133186338/28b0307f-ad3b-46aa-90f8-52636155a815)
4. Tampilkan NIM, NAMA, JENIS_KELAMIN, KOTA LAHIR dan ANGKATAN dari Mahasiswa yang
   memiliki Kota Lahir dengan inisial B dan dari Mahasiswa_Pindahan yang memiliki Nama
   dengan inisial D. Urutkan berdasarkan NIM.
   ```
   select mp.NIM, mp.NAMA, mp.JENIS_KELAMIN, mp.KOTA_LAHIR, mp.ANGKATAN
   from(
    select *
        from AKADEMIK.MAHASISWA_PINDAHAN mp1
        where substr(mp1.KOTA_LAHIR, 1, 1) = 'B'
    union
    select *
        from AKADEMIK.MAHASISWA_PINDAHAN mp2
        where substr(mp2.NAMA, 1, 1) = 'D'
   ) mp;
   ```
5. Tampilkan NIM, NAMA, JENIS_KELAMIN, KOTA LAHIR dan ANGKATAN dari Mahasiswa
   Angkatan 2015 dan dari Mahasiswa_Pindahan tetapi kecuali Mahasiswa_Pindahan yang
   memiliki Kota Lahir dengan inisial M urutkan berdasarkan NIM.
   ```
   select data.NIM, data.NAMA, data.JENIS_KELAMIN, data.KOTA_LAHIR, data.ANGKATAN
   from(
    select * from AKADEMIK.mahasiswa m1
        where m1.ANGKATAN = 2015
    union
    select *
    from(
        select * from AKADEMIK.MAHASISWA_PINDAHAN mpz
        except
        select * from AKADEMIK.MAHASISWA_PINDAHAN mp
                 where substr(mp.KOTA_LAHIR, 1, 1) = 'M'
    ) mp_tanpa_inisial_m
   ) data;
   ```
