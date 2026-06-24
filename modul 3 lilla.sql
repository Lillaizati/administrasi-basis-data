-- Nama : Lilla izati kamila
-- NIM : 24241089
-- Kelas : C
-- Modul : 3

-- menggunakan database
USE kelas_c_mart;

-- Nilai Literal
-- nilai atau data yang ada pada kolom di dalam tabel
-- Praktek #1
SELECT 77;

-- Praktek #2
SELECT 77 AS angka, true AS logika, 'PTI' AS teks;


-- NULL, literal khusus yang tidak memiliki nilai atau kosong
-- Praktek #3
SELECT NULL AS Kosong;

-- Operator Matematika
-- simbol fungsi, yang digunakan untuk mengoperasikan dua nilai literal angka 
-- +-/*MOD(sisa bagi)
-- setiap operator punya level (), */, +-
-- (10+2)/2 = 6, 10+2/2 = 11
-- Praktek #4
SELECT 5%2 AS sisa_bagi, 5/2 AS hasil_bagi, 5 DIV 2 AS hasil_bagi_2;

-- Latihan Mandiri
-- Soal 1

-- Soal 2

-- Soal 3

-- Soal 4 (buat soal 1 - 3 dalam 1 query)


-- Praktek #5, membuat ekspresi matematika dengan kolom dari tabel
-- kalikan kolom qty dengan kolom harga di tabel penjualan
SELECT tgl_transaksi, kode_pelanggan, nama_produk, qty, harga, qty*harga AS total FROM tr_penjualan;

-- Operator Perbandingan
-- Simbol yang digunakan untuk membandingkan nilai dari dua literal
-- termasuk ekspresi matematika
-- Praktek #6
SELECT 5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5>4;

-- Latihan mandiri
-- Soal 1

-- Soal 2

-- Soal 3

-- Soal 4

-- Soal 5

-- Soal 6

-- Soal 7 (gabungan 1 query soal 1 -6)


-- Fungsi
-- Fungsi Angka 
-- Praktek #7
SELECT POW(3,2), ROUND(3.14), ROUND(3.54, 1),
FLOOR(3.14), ceiling(3.14);
-- Praktek #8
-- Fungsi Tanggal 
SELECT NOW(), YEAR('2025-05-05'), MONTH(NOW()), DAY(NOW());
-- Praktek #9
-- Cari tahu berapa hari sudah hidup
SELECT datediff(NOW(), '2005-11-27');

-- Latihan Mandiri
-- Soal 1

-- Soal 2

-- Soal 3

-- Soal 4

-- Soal 5

-- Praktek #10
-- Cari tahu berapa lama (hari) pelanggan tidak transaksi 
SELECT datediff(NOW(), tgl_transaksi) FROM tr_penjualan;


-- WHERE sebagai filtering atau penyaring data dari hasil ekspresi perbandingan
-- Praktek #11
-- Ambil nama produk dan qty yang qty lebih dari 3
SELECT nama_produk, qty FROM tr_penjualan WHERE qty > 3;

-- Praktek #12
-- WHERE dengan multi kriteria
-- Ambil nama_produk dan qty dari penjualan yang qty lebih dari 3 dan bulan transaski = 6
SELECT nama_produk, qty
FROM tr_penjualan
WHERE qty > 3 AND MONTH(tgl_transaksi) = 6;

-- Praktek #13
-- filere menggunakan teks
-- Ambil semua transaksi dari produk dengan nama 'Flashdisk DQLab 32 GB'
SELECT nama_produk, qty
FROM tr_penjualan
WHERE nama_produk = 'Flashdisk DQLab 32 GB';

-- Operator Perbandingan LIKE
-- filter teks dengan pola tertentu
-- Praktek #14
SELECT nama_produk FROM tr_penjualan
WHERE nama_produk LIKE '_a%';

-- Latihan Mandiri
-- Soal 1

-- Soal 2

-- Soal 3

-- Operator Logika
-- menggabungkan 2 ekspresi perbandingan atau literal boolean (True / False)
-- Praktek #15
-- Ambil semua produk yang nama depannya f dan qty lebih dari 2
SELECT nama_produk, qty 
FROM tr_penjualan 
WHERE nama_produk LIKE 'f%' AND qty > 2;






