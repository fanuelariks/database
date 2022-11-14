CREATE TABLE pesan (
	id INT PRIMARY KEY NOT NULL auto_increment,
    user_id int,
    FOREIGN KEY (user_id)
		REFERENCES pembeli(id),
	tanggal datetime
);

create TABLE item_pesanan (
	id INT PRIMARY KEY NOT NULL auto_increment,
    pesan_id int, 
    FOREIGN KEY (pesan_id)
		REFERENCES pesan(id),
	jumlah_pesanan INT,
    barang_id INT,
    FOREIGN KEY (barang_id)
		REFERENCES barang(id),
	kategori_id INT,
    FOREIGN KEY (kategori_id)
		REFERENCES kategori(id)
);

INSERT INTO pesan (user_id, tanggal) VALUES
(1, "2022-11-13 19:35:55"),
(1, "2022-11-13 19:36:24"),
(1, "2022-11-13 19:39:53");

SELECT * FROM pesan;

INSERT INTO item_pesanan (pesan_id, jumlah_pesanan, barang_id, kategori_id) VALUES
(1, 3, 1, 1),
(2, 2, 8, 8),
(3, 1, 4, 4);

SELECT * FROM item_pesanan;

select pembeli.nama as pembeli, pembeli.alamat as alamat_pembeli, pembeli.telepon as telepon_pembeli, tanggal, pesan.id as invoice
from pesan inner join pembeli on pesan.user_id = pembeli.id;

select pesan_id as invoice, barang.nama as barang, kategori.nama as kategori, barang.harga_sat as harga, jumlah_pesanan as quantity, SUM(barang.harga_sat * jumlah_pesanan) as total_harga
from (item_pesanan inner join barang on item_pesanan.barang_id = barang.id) 
inner join kategori on item_pesanan.kategori_id = kategori.id
group by item_pesanan.id;
