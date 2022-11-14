use online_store;

CREATE TABLE pembeli (
	id INT PRIMARY KEY NOT NULL auto_increment,
	nama VARCHAR(250),
    alamat VARCHAR(250),
    telepon INT
);

CREATE TABLE barang (
	id INT PRIMARY KEY NOT NULL auto_increment,
    nama VARCHAR(50),
    jumlah_barang INT,
    harga_sat int,
    kategori_id INT,
    FOREIGN KEY (kategori_id)
		REFERENCES kategori(id)
);

CREATE TABLE kategori (
	id INT PRIMARY KEY NOT NULL auto_increment,
    nama VARCHAR (50)
);
