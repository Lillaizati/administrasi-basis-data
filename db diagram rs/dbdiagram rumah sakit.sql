  CREATE DATABASE rs_db:

  USE rs_db:

CREATE TABLE `DOKTER` (
  `id_dokter` int PRIMARY KEY,
  `nama` varchar(30),
  `sp` varchar(20),
  `no_tlpn` int,
  `kode_poli` int
);

CREATE TABLE `POLIKLINIK` (
  `kode_poli` int PRIMARY KEY,
  `nama_poli` varchar(20)
);

CREATE TABLE `pasien` (
  `NIK` int PRIMARY KEY,
  `nama_pasien` varchar(30),
  `alamat` varchat(50),
  `tgl_lahir` date
);

CREATE TABLE `daftar` (
  `no_antrean` int PRIMARY KEY,
  `tgl_daftar` date,
  `NIK` int,
  `id_dokter` Int
);

CREATE TABLE `REKAM_MEDIS` (
  `no_rm` int PRIMARY KEY,
  `no_antrean` int,
  `diagnosis` text,
  `keluhan` text
);

CREATE TABLE `OBAT` (
  `kode_obat` int PRIMARY KEY,
  `nama_obat` varchar(255),
  `harga` int
);

CREATE TABLE `RESEP` (
  `no_resep` int PRIMARY KEY,
  `tgl` date,
  `kode_obat` int,
  `no_rm` int
);

CREATE TABLE `KAMAR` (
  `no_kamar` int PRIMARY KEY,
  `tipe_kamar` varchar(255)
);

CREATE TABLE `RAWAT_INAP` (
  `tgl_masuk` date,
  `tgl_keluar` date,
  `NIK` int,
  `no_kamar` int,
  PRIMARY KEY (`NIK`, `no_kamar`)
);

ALTER TABLE `POLIKLINIK` ADD FOREIGN KEY (`kode_poli`) REFERENCES `DOKTER` (`kode_poli`);

ALTER TABLE `REKAM_MEDIS` ADD FOREIGN KEY (`no_antrean`) REFERENCES `daftar` (`no_antrean`);

ALTER TABLE `pasien` ADD FOREIGN KEY (`NIK`) REFERENCES `daftar` (`NIK`);

ALTER TABLE `daftar` ADD FOREIGN KEY (`id_dokter`) REFERENCES `DOKTER` (`id_dokter`);

ALTER TABLE `RESEP` ADD FOREIGN KEY (`kode_obat`) REFERENCES `OBAT` (`kode_obat`);

ALTER TABLE `RESEP` ADD FOREIGN KEY (`no_rm`) REFERENCES `REKAM_MEDIS` (`no_rm`);

ALTER TABLE `RAWAT_INAP` ADD FOREIGN KEY (`no_kamar`) REFERENCES `KAMAR` (`no_kamar`);

ALTER TABLE `RAWAT_INAP` ADD FOREIGN KEY (`NIK`) REFERENCES `pasien` (`NIK`);
