create schema AKADEMIK;

use AKADEMIK;

create table AKADEMIK.STRATA(
	ID_STRATA smallint not null primary key,
	SINGKAT VARCHAR (10),
	STRATA VARCHAR (45)
)

create table AKADEMIK.FAKULTAS(
	ID_FAKULTAS smallint not null primary key,
	FAKULTAS VARCHAR (45)
)

create table AKADEMIK.JURUSAN(
	ID_FAKULTAS smallint,	
	ID_JURUSAN smallint not null primary key,
	JURUSAN VARCHAR (45),
	foreign key (ID_FAKULTAS) references AKADEMIK.FAKULTAS(ID_FAKULTAS)
)

create table AKADEMIK.PRODI(
	ID_JURUSAN smallint,
	ID_STRATA smallint,
	ID_PRODI smallint not null primary key,
	PRODI VARCHAR (60),
	foreign key (ID_JURUSAN) references AKADEMIK.JURUSAN(ID_JURUSAN),
	foreign key (ID_STRATA) references AKADEMIK.STRATA(ID_STRATA)
)

create table AKADEMIK.SELEKSI_MASUK(
	ID_SELEKSI_MASUK smallint not null primary key,
	SINGKAT VARCHAR (12),
	SELEKSI_MASUK VARCHAR (60)
)

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


insert into fakultas (ID_FAKULTAS,FAKULTAS)
values ('1','Ekonomi & Bisnis');

insert into fakultas (ID_FAKULTAS,FAKULTAS)
values ('2','Ilmu Komputer');

insert into jurusan (ID_JURUSAN,ID_FAKULTAS,JURUSAN)
values ('21','2','Informatika');

insert into jurusan (ID_JURUSAN,ID_FAKULTAS,JURUSAN)
values ('22','2','Sistem Informasi');

insert into jurusan (ID_JURUSAN,ID_FAKULTAS,JURUSAN)
values ('23','2','Teknik Komputer');

insert into prodi (ID_PRODI,ID_STRATA,ID_JURUSAN,PRODI)
values ('211','2','21','Teknik Informatika');

insert into prodi (ID_PRODI,ID_STRATA,ID_JURUSAN,PRODI)
values ('212','2','21','Teknik Komputer');

insert into prodi (ID_PRODI,ID_STRATA,ID_JURUSAN,PRODI)
values ('219','3','21','Magister Ilmu Komputer');

insert into strata (ID_STRATA,SINGKAT,STRATA)
values ('1','D1','Diploma');

insert into strata (ID_STRATA,SINGKAT,STRATA)
values ('2','S1','Sarjana');

insert into strata (ID_STRATA,SINGKAT,STRATA)
values ('3','S2','Magister');

insert into seleksi_masuk (ID_SELEKSI_MASUK,SINGKAT,SELEKSI_MASUK)
values ('1','SNMPTN','SELEKSI NASIONAL MAHASISWA PERGURUAN TINGGI NEGERI');

insert into seleksi_masuk (ID_SELEKSI_MASUK,SINGKAT,SELEKSI_MASUK)
values ('2','SBMPTN','SELEKSI BERSAMA MAHASISWA PERGURUAN TINGGI NEGERI');

insert into mahasiswa (NIM,ID_SELEKSI_MASUK,ID_PRODI,NAMA,ANGKATAN,TGL_LAHIR,KOTA_LAHIR,JENIS_KELAMIN)
values ('155150400','1','211','JONI','2015',01/01/1997,'MALANG','W');

insert into mahasiswa (NIM,ID_SELEKSI_MASUK,ID_PRODI,NAMA,ANGKATAN,TGL_LAHIR,KOTA_LAHIR,JENIS_KELAMIN)
values ('155150401','2','212','JONO','2015',02/10/1997,'SITUBONDO','P');
