use online_store;

INSERT INTO kategori (nama) VALUES 
("pakaian"), ("mainan"), ("elektronik"), ("sepatu"), ("alat tulis"), 
("otomotif"), ("gadget"), ("aksesoris"), ("kecantikan"), ("olahraga");

INSERT INTO pembeli (nama, alamat, telepon) VALUES
("Gigih", "Semarang Kota", 081334),
("Kelvin", "Jakarta Utara", 082234),
("Bekti", "Jakarta Pusat", 081327),
("Jaja Mulyana", "Bandung", 081273),
("Alexia", "Jakarta Pusat", 081774),
("Alya", "Jakarta Selatan", 081752),
("Marvin", "Bogor", 081993),
("Axel", "Jakarta Selatan", 081955),
("Nisya", "Yogyakarta", 081444),
("Celine", "Surabaya", 082337),
("Pina", "Bali", 022374);

INSERT INTO barang (nama, jumlah_barang, harga_sat, kategori_id) VALUES
("Kaos kerah", "50", "135000", "1"),
("Diecast", "37", "435000","2"),
("Headphones", "110", "925000","3"),
("Sepatu Air Jordania", "75", "1350000","4"),
("Kertas A4", "140", "55000","5"),
("Helm", "30", "575000","6"),
("Tablet Sumsang", "327", "5735000","7"),
("Kalung metalik", "577", "125000","8"),
("Makeup", "100", "135000","9"),
("Skateboard", "70", "335000","10");