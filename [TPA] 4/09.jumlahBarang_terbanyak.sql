use online_store;
select * from barang
where jumlah_barang = (SELECT MAX(jumlah_barang) FROM barang);