# Tugas 3 Praktikum : SQL Data Manipulation Language

Berikut merupakan langkah pengerjaan dalam pembuatan schema AKADEMIK yang dibagi dalam 2 langkah utama, yaitu eksekusi data definition dan data manipulation

### Data Definition
1. Membuat schema AKADEMIK
   ```
   create schema AKADEMIK;
   ```
2. Buat table STRATA
   ```
   create table AKADEMIK.STRATA(
	ID_STRATA smallint not null primary key,
	SINGKAT VARCHAR (10),
	STRATA VARCHAR (45)
   )
   ```
3. Buat tabel FAKULTAS
   ```
   create table AKADEMIK.FAKULTAS(
	ID_FAKULTAS smallint not null primary key,
	FAKULTAS VARCHAR (45)
   )
   ```
4. Buat tabel JURUSAN
   ```
   create table AKADEMIK.JURUSAN(
	ID_FAKULTAS smallint,	
	ID_JURUSAN smallint not null primary key,
	JURUSAN VARCHAR (45),
	foreign key (ID_FAKULTAS) references AKADEMIK.FAKULTAS(ID_FAKULTAS)
   )
   ```
5. Buat tabel PRODI
   ```
   create table AKADEMIK.PRODI(
	ID_JURUSAN smallint,
	ID_STRATA smallint,
	ID_PRODI smallint not null primary key,
	PRODI VARCHAR (60),
	foreign key (ID_JURUSAN) references AKADEMIK.JURUSAN(ID_JURUSAN),
	foreign key (ID_STRATA) references AKADEMIK.STRATA(ID_STRATA)
   )
   ```
6. Buat tabel SELEKSI_MASUK
   ```
   create table AKADEMIK.SELEKSI_MASUK(
	ID_SELEKSI_MASUK smallint not null primary key,
	SINGKAT VARCHAR (12),
	SELEKSI_MASUK VARCHAR (60)
   )
   ```
7. Buat tabel MAHASISWA
   ```
   create table AKADEMIK.MAHASISWA(
	NIM VARCHAR (15) not null primary key,
	ID_PRODI smallint,
	ID_SELEKSI_MASUK smallint,
	NAMA VARCHAR (45),
	ANGKATAN smallint,
	TGL_LAHIR DATE,
	KOTA_LAHIR VARCHAR (60),
	JENIS_KELAMIN CHAR (1),
	foreign key (ID_PRODI) references AKADEMIK.PRODI(ID_PRODI),
	foreign key (ID_SELEKSI_MASUK) references AKADEMIK.SELEKSI_MASUK(ID_SELEKSI_MASUK)
   )
   ```

### Data Manipulation
1. Gunakan perintah USE
2. INSERT into FAKULTAS
3. INSERT into STARTA
4. INSERT into FAKULTAS
5. INSERT into JURUSAN
6. INSERT into PRODI
7. INSERT into SELEKSI_MASUK
8. INSERT into MAHASISWA

### Added or Changed
- Added this changelog :)
- Fixed typos in both templates
- Back to top links
- Added more "Built With" frameworks/libraries
- Changed table of contents to start collapsed
- Added checkboxes for major features on roadmap

### Removed

- Some packages/libraries from acknowledgements I no longer use
