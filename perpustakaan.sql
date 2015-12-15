-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 23. April 2014 jam 10:19
-- Versi Server: 5.0.51
-- Versi PHP: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE IF NOT EXISTS `buku` (
  `no_inv` varchar(15) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `kategori` varchar(30) NOT NULL,
  `rak` varchar(5) NOT NULL,
  `jumlah` int(4) NOT NULL,
  PRIMARY KEY  (`no_inv`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`no_inv`, `judul`, `pengarang`, `penerbit`, `kota`, `tahun`, `kategori`, `rak`, `jumlah`) VALUES
('00000001', 'a', 'b', 'c', 'd', '2008', 'e', 'f', 4),
('001', 'Konimex', '-', '-', '-', '2007', 'Ilmu Pengobatan', 'A3', 1),
('001/I/2000', 'Informatorium Obat Nasional Indonesia 2000 ( IONI )', 'Depkes RI Dirjen Pengawas Obat dan Makanan', 'Depkes RI Dirjen Pengawas Obat dan Makanan', 'Jakarta', '2000', 'Ilmu Pengobatan', 'A3', 1),
('001/I/2002', 'Bawang Putih Untuk Kesehatan', 'David Roser', 'Bumi Aksara', 'Jakarta', '2002', 'Ilmu Pengobatan', 'A3', 1),
('001/I/2004', 'Bijak Memanfaatkan Antibiotika', 'Dr. Bahar Azwar, SpB Onk', 'PT Kawan Pustaka', 'Depok', '2004', 'Ilmu Pengobatan', 'A3', 2),
('001/I/2005', 'Bijak Mengonsumsi Obat Flu', 'dr.Bahar Azwar,Sp B Onk', 'Kawan Pustaka', 'Tangerang', '2005', 'Ilmu Pengobatan', 'A3', 1),
('001/I/2007', 'Dokter di Rumah Anda', 'Dr.Tony Smith dan Dr. Sue Davidson', 'Dian Rakyat', 'Jakarta', '2006', 'Ensiklopedi', 'A3', 1),
('001/I/2009', 'A to Z Food Supplement', 'Nurheti Yuliarti', 'Penerbit Andi', 'Jogjakarta', '2009', 'Ilmu Pengobatan', 'A3', 1),
('001/I/2010', 'Buku Pintar P3K', 'Silvia Titin S.Kep', 'Tiara Pustaka', 'Jogjakarta', '2010', 'Ilmu Pengobatan', 'A3', 1),
('001/I/70', 'Kamus Latin Indonesia', 'Drs.K.Prent c.m. dkk', 'Jajasan Kanisius Semarang', 'Semarang', '1969', 'Ensiklopedi', 'A1', 1),
('001/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.1', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('001/I/78', 'The New Oxford Illustrated Dictionary', 'Oxford University', 'Oxford University Press', 'Tokyo', '1978', 'Ensiklopedi', 'A1', 0),
('001/I/81', 'The New Book Of Populer Science Vol.1', 'Grolier', 'Grolier Incorporated', 'Jakarta', '1981', 'Ensiklopedi', 'A1', 1),
('001/I/85', 'Buah-Buahan Untuk Karang Gizi', 'Slamet Soeseno', 'Penebar Swadaya', 'Jakarta', '1985', 'Ilmu Pengobatan', 'A3', 1),
('001/I/88', 'Ensiklopedi Nasional Indonesia Jilid 1', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1988', 'Ensiklopedi', 'A2', 1),
('001/I/90', 'Pengobatan Alamiah Untuk Pemakai Kacamata', 'Harry Benjamin N.D.', 'Gadjah Mada University Press', 'Jogjakarta', '1990', 'Ilmu Pengobatan', 'A3', 1),
('001/I/93', 'Kapita Selekta Farmakologi dan Obat Tradisional', 'Dr. H. Azwar Agoes', 'Angkasa', 'Bandung', '1993', 'Ilmu Pengobatan', 'A3', 1),
('001/I/95', 'Pemecah Rekor Manusia dan Tempat Bersejarah', 'Neil Grant', 'PT Mandiri Jaya Abadi', 'Semarang', '1995', 'Ensiklopedi', 'A2', 1),
('001/I/96', 'Kompendia Obat Bebas', 'Depkes RI Dirjen Pengawas Obat dan Makanan', 'Depkes RI Dirjen Pengawas Obat dan Makanan', 'Jakarta', '1996', 'Ilmu Pengobatan', 'A3', 1),
('001/M', 'Majalah Intisari Edisi Maret 1987', '-', '-', '-', '1987', 'Majalah', 'A3', 1),
('002', 'Daftar Produk Phapros', '-', '-', '-', '2000', 'Ilmu Pengobatan', 'A3', 2),
('002/I/2000', 'Penggolongan Obat Berdasarkan Khasiat dan Penggunaan', 'Moh. Anief', 'Gadjah Mada University Press', 'Jogjakarta', '2000', 'Ilmu Pengobatan', 'A3', 1),
('002/I/2007', 'Sehat Tanpa Obat', 'M. Isnaini', 'Media Insani', 'Jogjakarta', '2007', 'Ilmu Pengobatan', 'A3', 1),
('002/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.2', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('002/I/81', 'The New Book Of Populer Science Vol.2', 'Grolier', 'Grolier Incorporated', 'Jakarta', '1981', 'Ensiklopedi', 'A1', 1),
('002/I/88', 'Ensiklopedi Nasional Indonesia Jilid 2', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1988', 'Ensiklopedi', 'A2', 1),
('002/I/95', 'Pemecah Rekor Mesin dan Penemuan', 'Peter Lafferty', 'PT Mandiri Jaya Abadi', 'Semarang', '1995', 'Ensiklopedi', 'A2', 1),
('002/M', 'Majalah Intisari Edisi Januari 1987', '-', '-', '-', '1987', 'Majalah', 'A3', 1),
('003/I/2000', '7 Intisari Kesehatan The Miracle Of Enzyme', 'Tim Dafa Publishing', 'Dafa Publishing', 'Jogjakarta', '2000', 'Ilmu Pengobatan', 'A3', 1),
('003/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.3', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('003/I/81', 'The New Book Of Populer Science Vol.3', 'Grolier', 'Grolier Incorporated', 'Jakarta', '1981', 'Ensiklopedi', 'A1', 1),
('003/I/88', 'Ensiklopedi Nasional Indonesia Jilid 3', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1989', 'Ensiklopedi', 'A2', 1),
('003/M', 'Majalah Intisari Edisi Juli 1995', '-', '-', '-', '1995', 'Majalah', 'A3', 1),
('004/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.4', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('004/I/81', 'The New Book Of Populer Science Vol.4', 'Grolier', 'Grolier Incorporated', 'Jakarta', '1981', 'Ensiklopedi', 'A1', 1),
('004/I/88', 'Ensiklopedi Nasional Indonesia Jilid 4', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1989', 'Ensiklopedi', 'A2', 1),
('004/M', 'Majalah Intisari Edisi Agustus 2004', '-', '-', '-', '2004', 'Majalah', 'A3', 1),
('005/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.5', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('005/I/81', 'The New Book Of Populer Science Vol.5', 'Grolier', 'Grolier Incorporated', 'Jakarta', '1981', 'Ensiklopedi', 'A1', 1),
('005/I/88', 'Ensiklopedi Nasional Indonesia Jilid 5', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1989', 'Ensiklopedi', 'A2', 1),
('006/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.6', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('006/I/81', 'The New Book Of Populer Science Vol.6', 'Grolier', 'Grolier Incorporated', 'Jakarta', '1981', 'Ensiklopedi', 'A1', 1),
('006/I/88', 'Ensiklopedi Nasional Indonesia Jilid 6', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1989', 'Ensiklopedi', 'A2', 1),
('007/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.7', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('007/I/88', 'Ensiklopedi Nasional Indonesia Jilid 7', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1989', 'Ensiklopedi', 'A2', 1),
('008/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.8', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('008/I/88', 'Ensiklopedi Nasional Indonesia Jilid 8', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1989', 'Ensiklopedi', 'A2', 1),
('009/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.9', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('009/I/88', 'Ensiklopedi Nasional Indonesia Jilid 9', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1990', 'Ensiklopedi', 'A2', 1),
('010/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.10', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('010/I/88', 'Ensiklopedi Nasional Indonesia Jilid 10', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1990', 'Ensiklopedi', 'A2', 1),
('011/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.11', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('011/I/88', 'Ensiklopedi Nasional Indonesia Jilid 11', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1990', 'Ensiklopedi', 'A2', 1),
('012/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.12', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('012/I/88', 'Ensiklopedi Nasional Indonesia Jilid 12', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1990', 'Ensiklopedi', 'A2', 1),
('013/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.13', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('013/I/88', 'Ensiklopedi Nasional Indonesia Jilid 13', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1990', 'Ensiklopedi', 'A2', 1),
('014/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.14', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('014/I/88', 'Ensiklopedi Nasional Indonesia Jilid 14', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1990', 'Ensiklopedi', 'A2', 1),
('015/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.15', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('015/I/88', 'Ensiklopedi Nasional Indonesia Jilid 15', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1991', 'Ensiklopedi', 'A2', 1),
('016/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.16', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('016/I/88', 'Ensiklopedi Nasional Indonesia Jilid 16', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1991', 'Ensiklopedi', 'A2', 1),
('017/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.17', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('017/I/88', 'Ensiklopedi Nasional Indonesia Jilid 17', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1991', 'Ensiklopedi', 'A2', 1),
('018/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.18', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('018/I/88', 'Ensiklopedi Nasional Indonesia Jilid 18', 'Fuad Hasan', 'PT Cipta Adi Pustaka', 'Jakarta', '1991', 'Ensiklopedi', 'A2', 1),
('019/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.19', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('020/I/73', 'The Illustrated Encyclopedia of the Animal Kingdom Vol.20', 'Robert B. Clarke', 'The Danbury Press', 'New York', '1973', 'Ensiklopedi', 'A2', 1),
('06/H/2012', 'Ensiklopedi Penyakit Menular dan Infeksi', 'Sinta Sasika Novel,S.Si', 'Familia Pustaka Keluarga', 'Jogjakarta', '2011', 'Ensiklopedi', 'A3', 1),
('09/H/2012', 'Azab dan Sengsara', 'Merari Siregar', 'Balai Pustaka', 'Jakarta', '2010', 'Kesusasteraan', 'G3', 1),
('100/I/97', 'Dokter', 'Russel V Lee', 'Pustaka Ilmu Life', 'Jakarta', '1997', 'Ensiklopedi', 'A1', 1),
('101/H/2013', 'Nomor Telepon 000000001', 'Donatus A. Nugroho', 'Cinta', 'Bandung', '2005', 'Kesusasteraan', 'G3', 1),
('101/I/97', 'Roda', 'Wilfred Owen dan Ezra Bowen', 'Pustaka Ilmu Life', 'Jakarta', '1985', 'Ensiklopedi', 'A3', 1),
('102/I/97', 'Waktu', 'S.A. Goudsmit dan R. Claiborne', 'Pustaka Ilmu Life', 'Jakarta', '1997', 'Ensiklopedi', 'A1', 1),
('103/I/97', 'Sel', 'John Pfeifer', 'Pustaka Ilmu Life', 'Jakarta', '1997', 'Ensiklopedi', 'A1', 1),
('104/I/97', 'Tubuh', 'Alan E. Nourse', 'Pustaka Ilmu Life', 'Jakarta', '1997', 'Ensiklopedi', 'A1', 1),
('105/H/2013', 'Otoboke Section Chief', 'Kakifly', 'Elex Media Komputindo', 'Jakarta', '2013', 'Kesusasteraan', 'G3', 1),
('119/H/2013', 'Bekisar Merah', 'Ahmad Tohari', 'Kompas Gramedia', 'Jakarta', '2011', 'Kesusasteraan', 'G3', 1),
('121/H/2013', 'Puzzle Jodoh', 'Ida Fauziah', 'Penerbit Kalil, Imprint Gramedia Pustaka Utama', 'Jakarta', '2013', 'Kesusasteraan', 'G3', 1),
('127/H/2013', 'Bidadari  Bidadari Surga', 'Tere Liye', 'Republika', 'Jakarta', '2011', 'Kesusasteraan', 'G3', 1),
('133/H/2013', 'Siap Komandan', 'Nana Naung', 'Setinggi Langit', 'Cibubur', '2013', 'Kesusasteraan', 'G3', 1),
('135/H/2013', 'Nakayoshi', '-', 'Elex Media Komputindo', 'Jakarta', '2013', 'Kesusasteraan', 'G3', 1),
('136/H/2013', 'Sukses Bertanam Pepaya Unggul Kualitas Supermarket', 'Sobir,PhD', 'PT AgroMedia Pustaka', 'Bogor', '2009', 'Ilmu Pengobatan', 'A3', 1),
('14/H/2012', 'Siapa Bilang Cokelat Bikin Gemuk ?', 'John Ashton dan Suzy Ashton', 'PT Bhuana Ilmu Populer ( BIP )', 'Jakarta', '2012', 'Ilmu Pengobatan', 'A3', 2),
('144/H/2013', 'Pengelolaan & Penggunaan Obat Wajib Apotek', 'Stephen Zeenot', 'D-Medika', 'Jogjakarta', '2013', 'Ilmu Pengobatan', 'A3', 1),
('1467/B/2013', 'Pertolongan Pertama Edisi Kelima', 'Alton Thygerson, EdD FAWM', 'Erlangga', 'Jakarta', '2006', 'Ilmu Pengobatan', 'A3', 2),
('1468/B/2013', 'Panduan Kesehatan Keluarga', 'Dr. Miriam Stoppard', 'Erlangga', 'Jakarta', '2013', 'Ilmu Pengobatan', 'A3', 1),
('1476/B/2013', 'Sediaan & Dosis Obat', 'Nancy Didona', 'Erlangga', 'Jakarta', '2012', 'Ilmu Pengobatan', 'A3', 2),
('148/H/2013', 'Kamu Indonesia Banget Kalau', 'Berit Renser', 'TransMedia Pustaka', 'Jakarta', '2013', 'Kesusasteraan', 'G3', 1),
('1480/B/2013', 'Perhitungan Dosis Obat', 'Mary Jo Boyer', 'Erlangga', 'Jakarta', '2013', 'Ilmu Pengobatan', 'A3', 2),
('1498/YP/2013', 'Mahamimpi Anak Negeri', 'Suyatna Pamungkas', 'Tiga Serangkai', 'Solo', '2013', 'Kesusasteraan', 'G3', 1),
('1501/YP/2013', 'Gajah Mada Sumpah di Manguntur', 'Langit Kresna Hariadi', 'Tiga Serangkai', 'Solo', '2013', 'Kesusasteraan', 'G3', 1),
('1502/YP/2013', 'Penangsang', 'Nassirun Purwokartun', 'Tiga Serangkai', 'Solo', '2013', 'Kesusasteraan', 'G3', 1),
('1503/YP/2013', 'Ken Arok - Cinta dan Takhta', 'Zhaenal Fanani', 'Tiga Serangkai', 'Solo', '2013', 'Kesusasteraan', 'G3', 1),
('1506/YP/2013', 'Chairil Anwar : Pelopor Angkatan ''45', 'H.B. Jassin', 'Narasi', 'Jogjakarta', '2013', 'Kesusasteraan', 'G3', 1),
('1507/YP/2013', 'Terima Kasih Ibu Malaikat Tak Bersayap', '@TerimakasihIBU', 'PT WahyuMedia', 'Jakarta', '2013', 'Kesusasteraan', 'G3', 1),
('1517/H/2013', 'Pengantin Subuh', 'Zelfeni Wimra', 'Lingkar Pena', 'Bandung', '2009', 'Kesusasteraan', 'G3', 1),
('1517/HH/2013', 'Pangeran Untuk Putri', 'Regina Feby', 'Gramedia Pustaka Utama', 'Jakarta', '2013', 'Kesusasteraan', 'G3', 1),
('152/H/2013', 'Detektif Conan ( Buku 74 )', 'Aoyama Gosho', 'Elex Media Komputindo', 'Jakarta', '2013', 'Kesusasteraan', 'G3', 1),
('153/H/2013', 'Otoboke Section Chief ( Buku 19 )', 'Masashi Ueda', 'Elex Media Komputindo', 'Jakarta', '2013', 'Kesusasteraan', 'G3', 1),
('1531/BOS/2013', 'Pertolongan Pertama dan Pencegahan Cedera Olahraga', 'Ronald P. Pfeiffer, EdD, ATC', 'Erlangga', 'Jakarta', '2012', 'Ilmu Pengobatan', 'A3', 2),
('154/H/2013', 'Otoboke Section Chief ( Buku 16 )', 'Masashi Ueda', 'Elex Media Komputindo', 'Jakarta', '2013', 'Kesusasteraan', 'G3', 1),
('161/H/2013', 'Penjahat Paling Konyol Sedunia', 'Yudi Santoso', 'Palmall', 'Jogjakarta', '2013', 'Kesusasteraan', 'G3', 1),
('163/H/2013', 'Komik Mahabharata Jilid 4 : Pernikahan Arjuna dan Subadra', 'Garjon', 'Narasi', 'Jogjakarta', '2012', 'Kesusasteraan', 'G3', 1),
('166/H/2013', 'Sukses Agribisnis Minyak Atsiri', 'Ira Widiastuti', 'Pustaka Baru Press', 'Jogjakarta', '2013', 'Ilmu Pengobatan', 'A3', 1),
('169/H/2013', 'Senyum Karyamin', 'Ahmad Tohari', 'Gramedia Pustaka Utama', 'Jakarta', '2013', 'Kesusasteraan', 'G3', 1),
('171/H/2013', 'Ramayana', 'Ruhiyat. S', 'Gerai Comics', 'Jakarta', '2013', 'Kesusasteraan', 'G3', 1),
('175/H/2013', 'Otoboke Section Chief ( Buku 18 )', 'Masashi Ueda', 'Elex Media Komputindo', 'Jakarta', '2013', 'Kesusasteraan', 'G3', 1),
('182/H/2013', 'Daun Ampuh', 'Eren Harryana, dkk', 'Nusa Creativa', 'Jogjakarta', '2013', 'Ilmu Pengobatan', 'A3', 11),
('185/H/2013', 'Pondok Baca Kembali ke Semarang', 'Nh. Dini', 'Kompas Gramedia', 'Jakarta', '2011', 'Kesusasteraan', 'G3', 1),
('19/H/2012', 'Perahu Kertas', 'Dewi Lestari ( Dee )', 'Bentang', 'Bandung', '2009', 'Kesusasteraan', 'G3', 1),
('2221/H/2012', 'Be My Sweet Darling', 'Queen Soraya', 'Gramedia Pustaka Utama', 'Jakarta', '2009', 'Kesusasteraan', 'G3', 1),
('2222/H/2012', 'Coraline', 'Neil Gaiman', 'Gramedia Pustaka Utama', 'Jakarta', '2004', 'Kesusasteraan', 'G3', 1),
('2225/H/2012', 'Misteri Pangeran Asing', 'Enid Blyton', 'Gramedia Pustaka Utama', 'Jakarta', '2012', 'Kesusasteraan', 'G3', 1),
('2227/H/2012', 'Wajah di Jendela', 'Emma Fischel', 'Narasi', 'Jogjakarta', '2012', 'Kesusasteraan', 'G3', 1),
('2228/H/2012', 'Detektif Conan ( Buku 15 )', 'Aoyama Gosho', 'Elex Media Komputindo', 'Jakarta', '2012', 'Kesusasteraan', 'G3', 1),
('2230/H/2012', 'Wild Tales Series The Mirror of Sand', 'Seiko Yuguchi', 'Elex Media Komputindo', 'Jakarta', '2012', 'Kesusasteraan', 'G3', 1),
('2231/H/2012', 'K-ON!', 'Kakifly', 'Elex Media Komputindo', 'Jakarta', '2010', 'Kesusasteraan', 'G3', 1),
('2233/H/2012', 'Fairy Cube', 'Kaori Yuki Vol : 2', 'Gramedia', 'Jakarta', '2008', 'Kesusasteraan', 'G3', 1),
('2234/H/2012', 'Special A No.1', 'Maki Minami', 'Gramedia', 'Jakarta', '2006', 'Kesusasteraan', 'G3', 1),
('2235/H/2012', 'Bitter Virgin', 'Kei Kusunoki', '-', '-', '2012', 'Kesusasteraan', 'G3', 1),
('2236/H/2012', 'The Secret of Platform 13 ( Rahasia Peron 13 )', 'Eva Ibbotson', 'Gramedia Pustaka Utama', 'Jakarta', '2002', 'Kesusasteraan', 'G3', 1),
('2237/H/2012', 'The Law of Ueki Plus', 'Fukuchi Tsubasa', 'Elex Media Komputindo', 'Jakarta', '2012', 'Kesusasteraan', 'G3', 1),
('2240/H/2012', 'Lima Sekawan Rahasia Logam Ajaib', 'Enid Blyton', 'Gramedia Pustaka Utama', 'Jakarta', '2001', 'Kesusasteraan', 'G3', 1),
('2243/P/2013', 'The Miracle Of Probiotics', 'Denny Indra Praja', 'Diva Press', 'Jogjakarta', '2011', 'Ilmu Pengobatan', 'A3', 1),
('2246/P/2013', 'Obat - Obatan Cespleng Tak Lazim di Sekitar Kita', 'Adi D. Tilong', 'Diva Press', 'Jogjakarta', '2012', 'Ilmu Pengobatan', 'A3', 1),
('2261/H/2013', 'Mencintai Malaysia', 'Dr. Sidik Jatmika', 'Diva Press', 'Jogjakarta', '2009', 'Kesusasteraan', 'G3', 1),
('2264/P/2013', 'Orang-Orang Proyek', 'Ahmad Tohari', 'Gramedia Pustaka Utama', 'Jakarta', '2007', 'Kesusasteraan', 'G3', 1),
('2270/P/2013', 'Buku Panduan Lengkap Ilmu Penyakit Dalam', 'Sholeh S. Naga', 'Diva Press', 'Jogjakarta', '2012', 'Ilmu Pengobatan', 'A3', 1),
('2271/P/2013', 'Arjuna Sang Pembunuh', 'Ardian Kresna', 'Diva Press', 'Jogjakarta', '2009', 'Kesusasteraan', 'G3', 1),
('2272/P/2013', 'Punakawan Menggugat', 'Ardian Kresna', 'Diva Press', 'Jogjakarta', '2012', 'Kesusasteraan', 'A3', 1),
('29/H/2012', 'Sejarah Asal - Usul Nenek Moyang Orang Jawa', 'Dr.Purwadi , M.Hum', 'Panji Pustaka', 'Jogjakarta', '2010', 'Kesusasteraan', 'G3', 1),
('30/H/2012', 'Petir', 'Dewi Lestari ( Dee )', 'Bentang Pustaka', 'Jakarta', '2012', 'Kesusasteraan', 'G3', 1),
('31/H/2012', 'Ensiklopedi Tubuh Manusia', 'Ika Rifqiawati dan Annah el-Hisani', 'Garailmu', 'Jogjakarta', '2010', 'Ensiklopedi', 'A3', 2),
('33/H/2012', 'Ekspedisi Phinisi Nusantara', 'Pius Caro', 'Kompas', 'Jakarta', '2012', 'Kesusasteraan', 'G3', 1),
('34/H/2012', 'Gizi Saat Sindrom Menstruasi', 'Nirmala Devi', 'PT Bhuana Ilmu Populer ( BIP )', 'Jakarta', '2012', 'Ilmu Pengobatan', 'A3', 1),
('398/II/97', '30 Tahun Indonesia Merdeka 1945-1949', '', 'PT Tira Pustaka', 'Jakarta', '1975', 'Ensiklopedi', 'A3', 1),
('400/II/97', '30 Tahun Indonesia Merdeka 1965-1973', '', 'PT Tira Pustaka', 'Jakarta', '1975', 'Ensiklopedi', 'A3', 1),
('401/H/2013', 'Lima Sekawan Rahasia Harta Karun', 'Enid Blyton', 'Gramedia Pustaka Utama', 'Jakarta', '1998', 'Kesusasteraan', 'G3', 1),
('401/II/97', '30 Tahun Indonesia Merdeka 1974-1975', '', 'PT Tira Pustaka', 'Jakarta', '1975', 'Ensiklopedi', 'A3', 1),
('411/II/97', 'Kamus Umum Bahasa Indonesia Bag. I', 'W.J.S Poerwadarminta', 'P.N. Balai Pustaka', 'Jakarta', '1966', 'Ensiklopedi', 'A1', 1),
('49/H/2012', 'Ilmu Meracik Obat', 'Moh. Anief', 'Gadjah Mada University Press', 'Jogjakarta', '1987', 'Ilmu Pengobatan', 'A3', 3),
('59/P/2012', 'Chairul Tanjung Si Anak Singkong', 'Tjahja Gunawan Diredja', 'Kompas', 'Jakarta', '2012', 'Kesusasteraan', 'G3', 1),
('65/H/2012', 'Frogs & French Kisses', 'Sarah Mlynowski', 'Gramedia Pustaka Utama', 'Jakarta', '2008', 'Kesusasteraan', 'G3', 1),
('665/III/97', 'Jantan', 'Edijushanan', 'Gramedia', 'Jakarta', '1989', 'Kesusasteraan', 'G3', 1),
('67/P/2012', 'Menurunkan Tekanan Darah', 'Aggie Casey,R.N.,M.S. dan Herbert Benson,M.D.', 'PT Bhuana Ilmu Populer ( BIP )', 'Jakarta', '2012', 'Ilmu Pengobatan', 'A3', 1),
('674/III/97', 'Patah Tumbuh Hilang Berganti', 'Zunaidah Subro', 'Balai Pustaka', 'Jakarta', '1993', 'Kesusasteraan', 'G3', 1),
('677/III/97', 'Anak Tanahair Secercah Kisah', 'Ajib Rosidi', 'Gramedia', 'Jakarta', '1985', 'Kesusasteraan', 'G3', 1),
('681/III/97', 'Salah Pilih', 'N.ST. Iskandar', 'Balai Pustaka', 'Jakarta', '1992', 'Kesusasteraan', 'G3', 1),
('685/III/97', 'Langit dan Bumi Sahabat Kami', 'Nh. Dini', 'Gramedia Pustaka Utama', 'Jakarta', '1991', 'Kesusasteraan', 'G3', 1),
('691/III/97', 'Nurse Matilda', 'Christiana Brand', 'Knight Books', '-', '1997', 'Kesusasteraan', 'G3', 1),
('695/III/97', 'Mr Berry''s Ice - Cream Parlour', 'Jennifer Zabel', 'Puffin Books', 'Victoria', '1997', 'Kesusasteraan', 'G3', 1),
('699/III/97', 'Goliath And The Buried Treasure', 'Terrance Dicks', 'Knight Books', '-', '1997', 'Kesusasteraan', 'G3', 1),
('702/III/97', 'Favourite Stories From Singapore', 'Irene-Anne Monteiro and Jenny Watson', 'PT Rosda Jayaputra', 'Jakarta', '1984', 'Kesusasteraan', 'G3', 1),
('73/H/2013', 'Once Upon A Love', 'Aditia Yudis', 'GagasMedia', 'Jakarta', '2011', 'Kesusasteraan', 'G3', 1),
('798/IX/97', 'The Contemporary English - Indonesia Dictionary', 'Drs. Peter Salim', 'Modern English Press', 'Jakarta', '1990', 'Ensiklopedi', 'A1', 1),
('83/H/2013', 'Solusi Murah Untuk Cantik Sehat Energik', 'Malahayati,S.Psi', 'Great Publisher', 'Jogjakarta', '2010', 'Ilmu Pengobatan', 'A3', 1),
('84/H/2013', 'Ilmu Gizi Jilid I', 'Prof.Dr.Achmad Djaeni Sediaoetama, M.Sc.', 'Dian Rakyat', 'Jakarta', '2000', 'Ilmu Pengobatan', 'A3', 1),
('85/H/2013', 'Ilmu Gizi Pengetahuan Dasar Ilmu Gizi', 'Sjahmien Moehji', 'Papas Sinar Sinarti', 'Jakarta', '2002', 'Ilmu Pengobatan', 'A3', 1),
('87/I/97', 'Pertumbuhan', 'James M. Tanner dan Gordon Rattray Taylor', 'Pustaka Ilmu Life', 'Jakarta', '1988', 'Ensiklopedi', 'A3', 1),
('88/I/97', 'Kapal', 'Edward V Lewis dan R.O''Brien', 'Pustaka Ilmu Life', 'Jakarta', '1997', 'Ensiklopedi', 'A1', 1),
('89/I/97', 'Kesehatan dan Penyakit', 'Rene Dubos dan Maya Pines', 'Pustaka Ilmu Life', 'Jakarta', '1997', 'Ensiklopedi', 'A1', 1),
('90/I/97', 'Ilmuwan', 'Henry M dan David B', 'Pustaka Ilmu Life', 'Jakarta', '1997', 'Ensiklopedi', 'A1', 1),
('91/I/97', 'Insyinyur', 'C.C Furnas dan Joe McCarhy', 'Pustaka Ilmu Life', 'Jakarta', '1997', 'Ensiklopedi', 'A1', 1),
('92/I/97', 'Makanan dan Gizi', 'William H. Sebrell Jr dan James J. Haggerty ', 'Pustaka Ilmu Life', 'Jakarta', '1986', 'Ensiklopedi', 'A3', 1),
('93/I/97', 'Manusia dan Antariksa', 'Arthur C. Clarke', 'Pustaka Ilmu Life', 'Jakarta', '1988', 'Ensiklopedi', 'A3', 1),
('94/I/97', 'Molekul Raksasa', 'Herman F. Mark', 'Pustaka Ilmu Life', 'Jakarta', '1997', 'Ensiklopedi', 'A1', 1),
('95/I/97', 'Materi', 'Ralph E. Lopp', 'Pustaka Ilmu Life', 'Jakarta', '1997', 'Ensiklopedi', 'A1', 1),
('96/I/97', 'Mesin', 'Robert O''Brien', 'Pustaka Ilmu Life', 'Jakarta', '1997', 'Ensiklopedi', 'A1', 1),
('98/I/97', 'Air', 'Luna B. Leopold dan K.S. Davis', 'Pustaka Ilmu Life', 'Jakarta', '1997', 'Ensiklopedi', 'A1', 1),
('99/I/97', 'Energi', 'Mitchell Wilson', 'Pustaka Ilmu Life', 'Jakarta', '1997', 'Ensiklopedi', 'A1', 1),
('SMK/001/2007', 'Atlas Tumbuhan Obat Indonesia', 'dr.Setiawan Dalimartha', 'Puspa Swara', 'Jakarta', '2006', 'Ilmu Pengobatan', 'A3', 1),
('SMK/05/09', 'Aneka Resep Ramuan Jamu Jawa', 'Atik Sri Hartatik', 'Penerbit Indah', 'Surabaya', '1998', 'Ilmu Pengobatan', 'A3', 1),
('SMK/05/18', 'Masalah Penyalahgunaan Obat', 'Prof.Nanizar Zaman dan Joenoes, Pharm D', 'Surabaya Intellectual Club ( SIC )', 'Surabaya', '1994', 'Ilmu Pengobatan', 'A3', 1),
('SMK/05/21', 'Gizi Dalam Kesehatan Reproduksi', 'Erna Fracin Paath,S.Sos dkk', 'Penerbit Buku Kedokteran EGC', 'Jakarta', '2005', 'Ilmu Pengobatan', 'A3', 1),
('SMK/05/24', 'Khasiat Umbi-Umbian Untuk Pengobatan', 'DS. Soewito M', 'Titik Terang', 'Jakarta', '1997', 'Ilmu Pengobatan', 'A3', 2),
('SMK/05/26', 'Standardisasi Diagnostik dan Penatalaksanaan Beberapa Penyakit Menular Seksual ( PMS ) ', 'dr.Sjaiful Fahmi Daili', 'Balai Penerbitan Fakultas Kedokteran Universitas Indonesia', 'Jakarta', '1990', 'Ilmu Pengobatan', 'A3', 1),
('SMK/05/28', 'Sorghum Tanaman Serba Guna', 'Rismunandar', 'Sinar Baru', 'Bandung', '1989', 'Ilmu Pengobatan', 'A3', 2),
('SMK/05/29', 'Berwiraswasta dengan Beternak Lebah', 'Rismunandar', 'Sinar Baru', 'Bandung', '1974', '', 'A3', 1),
('SMK/05/33', '100 Pertanyaan + Jawaban Demam Berdarah', 'Dr. Handrawan Nadesul', 'Kompas', 'Jakarta', '2004', 'Ilmu Pengobatan', 'A3', 1),
('SMK/05/35', '36 Resep Tumbuhan Obat Untuk Menurunkan Kolesterol', 'Dr. Setiawan Dalimartha', 'Penebar Swadaya', 'Seri Agrisehat', '2004', 'Ilmu Pengobatan', 'A3', 1),
('SMK/06/09', 'Obat - Obatan', 'Dra. V. Nuraini Widjajanti Apt', 'Kanisius', 'Semarang', '1998', 'Ilmu Pengobatan', 'A3', 2),
('SMK/06/14', 'Interaksi Obat', 'Richard Harkness', 'ITB Bandung', 'Bandung', '1984', 'Ilmu Pengobatan', 'A3', 3),
('SMK/06/17', 'Flu Burung', 'Retno D. Soejoedono dan Ekowati Handharyani', 'Swadaya', 'Bogor', '2005', 'Ilmu Pengobatan', 'A3', 1),
('SMK/06/19', 'Perencanaan Pangan dan Gizi', 'Suhardjo', 'Bumi Aksara', 'Jakarta', '2005', 'Ilmu Pengobatan', 'A3', 1),
('SMK/06/21', 'Berbagai Cara Pendidikan Gizi', 'Suhardjo', 'Bumi Aksara', 'Jakarta', '2003', 'Ilmu Pengobatan', 'A3', 1),
('SMK/06/28', 'Penyembuhan dengan Labu Parang', 'Prof. H.M. Hembing Wijayakusuma', 'Pustaka Populer Obor', 'Jakarta', '2005', 'Ilmu Pengobatan', 'A3', 1),
('SMK/07/06', 'Minyak Atsiri', 'Ernest Guenther', 'Universitas Indonesia', 'New York', '1990', 'Ilmu Pengobatan', 'A3', 1),
('SMK/07/20', 'Macam-Macam Penyakit Menular', 'dr. Faisal Yatim DTM&H,MPH', 'Pustaka Obor Populer', 'Jakarta', '2007', 'Ilmu Pengobatan', 'A3', 1),
('SMK/07/22', 'Penelitian Farmasi Komunitas dan Klinik', 'Ika Puspita Sari', 'Gadjah Mada University Press', 'Jogjakarta', '2004', 'Ilmu Pengobatan', 'A3', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `id_history` int(20) NOT NULL auto_increment,
  `nis` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_inv` varchar(15) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_terima` date NOT NULL,
  `jumlah` int(4) NOT NULL,
  PRIMARY KEY  (`id_history`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`id_history`, `nis`, `nama`, `no_inv`, `judul`, `tgl_pinjam`, `tgl_kembali`, `tgl_terima`, `jumlah`) VALUES
(1, '001/2014', 'Eko Jatmiko', '00000001', 'a', '2014-03-15', '0000-00-00', '0000-00-00', 0),
(2, '001/2014', 'Eko Jatmiko', '00000001', 'a', '2014-03-15', '2014-03-22', '2014-03-15', 1),
(3, '001/2014', 'Eko Jatmiko', '00000001', 'a', '2014-03-15', '2014-03-22', '2014-03-15', 1),
(4, '002/2014', 'Annisa Dian Naranti', '001/I/78', 'The New Oxford Illustrated Dictionary', '2014-03-17', '2014-03-24', '2014-03-17', 1),
(5, '003/2014', 'Fiqhi Cahyaningrum Rahmawati', '005/I/81', 'The New Book Of Populer Science Vol.5', '2014-03-19', '2014-04-02', '2014-03-19', 1),
(6, '004/2014', 'Hanan Laras Indi', '001/I/78', 'The New Oxford Illustrated Dictionary', '2014-03-19', '2014-03-26', '2014-03-19', 1),
(7, '004/2014', 'Hanan Laras Indi', '00000001', 'a', '2014-03-19', '2014-03-26', '2014-03-21', 1),
(8, '003/2014', 'Fiqhi Cahyaningrum Rahmawati', '005/I/81', 'The New Book Of Populer Science Vol.5', '2014-03-19', '2014-04-02', '2014-03-27', 1),
(9, '11.006', 'Annisa Miftahul Janna', '59/P/2012', 'Chairul Tanjung Si Anak Singkong', '2014-03-27', '2014-04-03', '2014-03-27', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sirkulasi`
--

CREATE TABLE IF NOT EXISTS `sirkulasi` (
  `id_transaksi` int(20) NOT NULL auto_increment,
  `nis` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_inv` varchar(15) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_terima` date NOT NULL,
  `jumlah` int(4) NOT NULL,
  `denda` int(100) NOT NULL,
  PRIMARY KEY  (`id_transaksi`),
  KEY `nis` (`nis`),
  KEY `no_inv` (`no_inv`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Triggers `sirkulasi`
--
DROP TRIGGER IF EXISTS `perpustakaan`.`tr_buku_dipinjam`;
DELIMITER //
CREATE TRIGGER `perpustakaan`.`tr_buku_dipinjam` AFTER INSERT ON `perpustakaan`.`sirkulasi`
 FOR EACH ROW BEGIN
UPDATE buku SET jumlah = jumlah - new.jumlah WHERE no_inv = new.no_inv;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `perpustakaan`.`tr_buku_dikembalikan`;
DELIMITER //
CREATE TRIGGER `perpustakaan`.`tr_buku_dikembalikan` AFTER DELETE ON `perpustakaan`.`sirkulasi`
 FOR EACH ROW BEGIN
UPDATE buku SET jumlah = jumlah + old.jumlah WHERE no_inv = old.no_inv;
END
//
DELIMITER ;

--
-- Dumping data untuk tabel `sirkulasi`
--

INSERT INTO `sirkulasi` (`id_transaksi`, `nis`, `nama`, `no_inv`, `judul`, `tgl_pinjam`, `tgl_kembali`, `tgl_terima`, `jumlah`, `denda`) VALUES
(3, '004/2014', 'Hanan Laras Indi', '001/I/78', 'The New Oxford Illustrated Dictionary', '2014-03-19', '2014-03-26', '0000-00-00', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `nis` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenkel` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `jurusan` varchar(20) NOT NULL,
  PRIMARY KEY  (`nis`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `jenkel`, `alamat`, `no_hp`, `jurusan`) VALUES
('13.362', 'ANNISA RIZKA ERA ADILA', 'Perempuan', 'JL. MERPATI DALAM NO. 8C PEDURUNGAN  SEMARANG', '085641963894', 'Farmasi'),
('13.360', 'AMALLYA  ROSITA DEWI', 'Perempuan', 'JL. PUCANG SANTOSO TENGAH 4/12 RT 11 RW 30', '08813781579', 'Farmasi'),
('13.361', 'ANDIN  NITASARI', 'Perempuan', 'PERUM.BUMI WANA MUKTI H 2 / 11 SEMARANG', '08981406556', 'Farmasi'),
('13.363', 'ANTONIUS JOVIAN MAHENDRA', 'Laki-laki', 'JL. GUSTRI PUTRI 4 NO. 17 TLOGOSARI SEMARANG', '087834824447', 'Farmasi'),
('13.364', 'ARIMBI KUMALA RIMBA .S', 'Perempuan', 'JL. BLEDAK KANTIL 4 NO 6 TLOGOSARI  SEMARANG', '087717205550', 'Farmasi'),
('13.365', 'ASESANTI SUCI NUR PRATAMI', 'Perempuan', 'KP. PANDEAN TAMAHARJO NO. 97 SEMARANG', '081392084324', 'Farmasi'),
('13.366', 'BRIGITA BELLA ANTANA', 'Perempuan', 'JL. WAHYU TEMURUN I N0. 13 TLOGOSARI  SEMARANG', '081326960420', 'Farmasi'),
('13.367', 'CHAIRULIYAWATI', 'Perempuan', 'JL. TAMBAKAN RT 03/ RW 07 KALIGAWE SEMARANG', '08996393522', 'Farmasi'),
('13.368', 'DESTI TRIANA DEWI', 'Perempuan', 'JL. PARANG BARONG VI SEMARNG', '085741480858', 'Farmasi'),
('13.369', 'DEWI OCTAMARINA', 'Perempuan', 'JL. GALAR 4 N0. 14 TLOGOSARI  SEMARANG', '089668044338', 'Farmasi'),
('13.370', 'DICKY GILANG WAHYUDA', 'Laki-laki', 'JL. KENCONO WUNGU TENGAH 5/4 KARANG AYU  SEMARANG', '089652323587', 'Farmasi'),
('13.371', 'ELMI RAHMADANI', 'Perempuan', 'JL. SATRIO WIBOWO I N0. 32 SEMARANG', '085741512752', 'Farmasi'),
('13.372', 'ELSA LIANA LESTARI', 'Perempuan', 'JL. DWOROWATI 1/2C RT 4 RW 9 SEMARANG', '085740600655', 'Farmasi'),
('13.373', 'ERIKA  YULINDA', 'Perempuan', 'JL. BEDAGAN  I NO. 533 RT3 RW 2 SEMARANG', '083838018464', 'Farmasi'),
('13.374', 'EVIRA  REFRYLIANA', 'Perempuan', 'JL. PUCAG ELOK 4 NO 10 PUCANG GADING SEMARANG', '08812429288', 'Farmasi'),
('13.375', 'HANI  KHOIRINA', 'Perempuan', 'PONDOK R. PATAH BLOK X NO 8 SAYUNG DEMAK', '', 'Farmasi'),
('13.377', 'IGNES VIOLITA ANANDA', 'Perempuan', 'KP. GENDONG UTARA SEMARANG', '', 'Farmasi'),
('13.378', 'IKHA NUR  SAFITRI', 'Perempuan', 'KUPEN  TEAL SARI PRINGSURAT   TEM,ANGGUNG', '085643946758', 'Farmasi'),
('13.379', 'IVANA AGUSTINE', 'Perempuan', 'PURI ARTERI BARU NO. 45  SEMARANG', '08386683631', 'Farmasi'),
('13.380', 'KEMALA ENDAR  SETIAWATI', 'Perempuan', 'JL. IRAWAN NO.I  SEMARANG', '085727663358', 'Farmasi'),
('13.381', 'KHAERUL UMAM', 'Laki-laki', 'JL. BLEDAK KANTIL I/57 TLOGOSARI  SEMARANG', '085742379770', 'Farmasi'),
('13.382', 'KHUSNUL  HIDAYAH', 'Perempuan', 'JL. SATRIO WIBOWO I/1 TLOGOSARI  SEMARANG', '089609960274', 'Farmasi'),
('13.383', 'LURENSIA EGA HERNAWATI', 'Perempuan', 'JL. KEBON ARUM SELATAN 8/15 PUCANG GADING', '089622164321', 'Farmasi'),
('13.384', 'NABILA ZAMZAMIA', 'Perempuan', 'JL. KH. ABDUL RASYID BUGEN SEMARANG', '087700077987', 'Farmasi'),
('13.385', 'NADIA', 'Perempuan', 'JL. CIMANDIRI X NO 11 SEMARANG', '089606987844', 'Farmasi'),
('13.386', 'NADIA NUR AINI', 'Perempuan', 'JL. BLEDAK KANTIL 5 NO. 1 SEMARANG', '085740676567', 'Farmasi'),
('13.388', 'NOVI DWI ANGGRAENI', 'Perempuan', 'JL. BLEDAK KANTIL 4 NO  30 SEMARANG', '089636825251', 'Farmasi'),
('13.389', 'PUTRI NUR HIDAYAH', 'Perempuan', 'JL. SATRIO WIBOWO 1 NO  32 SEMARANG', '085726864480', 'Farmasi'),
('13.390', 'RETNO YUNI ASTUTI', 'Perempuan', 'JL. SINGA UTARA  SEMARANG', '089620152256', 'Farmasi'),
('13.391', 'REFINA  RAHMAWATI', 'Perempuan', 'JL. PALEBON RT 4 / 03 SEMARANG', '085600070289', 'Farmasi'),
('13.392', 'REYNANDIVA FLORENTINA. M.S', 'Perempuan', 'JL MENJANGAN II NO  16 PEDURUNGAN SEMARANG', '085727803283', 'Farmasi'),
('13.393', 'SAYEKTI  CAHYANINGRUM', 'Perempuan', 'JL. KARANG INGAS NO. 30B RW7 TLOGOSARI  SEMARANG', '089692022386', 'Farmasi'),
('13.394', 'SITI RIANA', 'Perempuan', 'JL. SERUNI 3 NO 19  TLOGOSARI  SEMARANG', '', 'Farmasi'),
('13.395', 'TILAWATI  AINUL  HIDAYAH', 'Perempuan', 'JL. BLEDAK KANTIL 4 NO 6 TLOGOSARI  SEMARANG', '089667682544', 'Farmasi'),
('13.396', 'YULIA KRISMONIA', 'Perempuan', 'JL. NGABLAK INDAH RT4 RW 4 BANGET AYU KULON SEMARANG', '085727227137', 'Farmasi'),
('13.397', 'AJENG RIZQY OETAMI', 'Perempuan', 'JL. WALUYO,GG AMENG"AN NO 16 rT.01 RW I PEGULAN  KENDAL', '08978013422', 'Farmasi'),
('13.398', 'ALDA AULIA ROSYADA', 'Perempuan', 'JL. PEDURUNGAN TENGAH I NO  18 SEMARANG', '083842200777', 'Farmasi'),
('13.399', 'AMALIA  ROSYADA', 'Perempuan', 'JL. TAMBAK MULYO RT 08/RW 14 SEMARANG', '085726996723', 'Farmasi'),
('13.400', 'AMELIYA NILA SAFITRI', 'Perempuan', 'PERUM PURI MONDOTEKO,PURI UTARA II NO 14   REMBANG', '089620832345', 'Farmasi'),
('13.402', 'AUFRIDA INDRYASWATI', 'Perempuan', 'GENUK SARI  RT 04/RW03, GENUK,  SEMARANG', '089667774938', 'Farmasi'),
('13.403', 'AULIA NURLEILLA SYARIFAH', 'Perempuan', 'JL. PENJARINGAN RT11 RW 01 , KALIGAWE  ,  SEMARANG', '089669242126', 'Farmasi'),
('13.404', 'DESSY YUVITA ROSALINA', 'Perempuan', 'JL.RASAMALA TIMUR III NO 4BANYUMANIK ,  SEMARANG', '085225084351', 'Farmasi'),
('13.405', 'DIAH ARUM SARI', 'Perempuan', 'JL. PONDOK MAJAPAHIT I RT 5 / RW 5 BLOK KK 23', '088803903924', 'Farmasi'),
('13.406', 'DIAH AYU ANGGRAINI', 'Perempuan', 'JL. PENGAPON KP. PENJARINGAN RT 10 RW 01 SEMARANG', '083835344783', 'Farmasi'),
('13.407', 'DINAR ANINDYA RATRI', 'Perempuan', 'JL. PAHLAWAN   II  RT03/03 LANGEN HARJO , KENDAL', '', 'Farmasi'),
('13.408', 'FARADILA AZIZATULLATHIFA', 'Perempuan', 'JL. MERPATI BARAT  RT 10 RW 09 PEDURUNGAN  SEMARANG', '', 'Farmasi'),
('13.410', 'FELDSPARINE DIAN ASTATI', 'Perempuan', 'JL. CINDE DALAM I /18 RT 8 RW 5   SEMARANG', '', 'Farmasi'),
('13.411', 'FRINSCA AULIA DIVYARINI', 'Perempuan', 'JL. SRININDITO VI RT 09 RW I NO. 60 SEMARANG', '', 'Farmasi'),
('13.412', 'GILANG ANDIKA PRATAMA', 'Perempuan', 'JL. PROTOKOL RT 03 RW 01 PUTAT,  PURWODADI', '', 'Farmasi'),
('13.413', 'KHOIRUL ABDISSABBACH', 'Perempuan', 'JL. MANGGIS RT03 /RW 01 KARANGSARI  KARANG TENGAH, DEMAK', '', 'Farmasi'),
('13.414', 'LATIFAH HIDAYATI', 'Perempuan', 'JL. WATULAWANG TMR III NO 03 RT 08 RW 08, SEMARANG', '', 'Farmasi'),
('13.415', 'LILIANA NUR INTAN WACHID', 'Perempuan', 'JL. TLOGO BIRU  II RT09 RW 27 NO 6  SEMARANG', '', 'Farmasi'),
('13.416', 'MARGI RACHMATIKA', 'Perempuan', 'JL. KEPODANG BARAT C NO 4 SEMARANG', '', 'Farmasi'),
('13.417', 'MOCH ARIEF HIDAYAT', 'Laki-laki', 'JL. DEPOK SARI DALAM III  NO 2 RT 19 RW 27', '', 'Farmasi'),
('13.418', 'NUR SALAMAH', 'Perempuan', 'JL. PATEMON RT 01 / RW 1 GUNUNG PATI, SEMARANG', '', 'Farmasi'),
('13.419', 'OKTAVINI ASMAUL HUSNA', 'Perempuan', 'GENUK SEMARANG JL BANJARDOWO RT 03/RW06', '', 'Farmasi'),
('13.420', 'OLGA PRAMUDITA', 'Perempuan', 'DEMPEL  LOR', '', 'Farmasi'),
('13.421', 'RAHMAWATI IKA MANISAPUTRI', 'Perempuan', 'PERUM KARTIKA ASRI BLOK C3 NO 11', '', 'Farmasi'),
('13.422', 'RIKA PUPITA SARI', 'Perempuan', 'SELO MULYO MUKTI BARAT RT3 RW 9 NO 179', '', 'Farmasi'),
('13.423', 'RONA AYU FINANTO', 'Perempuan', 'JL. KEMBANG JERUK IV NO 6TLOGOSARI  SEMARANG', '', 'Farmasi'),
('13.424', 'SENJA KHOIRUNNISA', 'Perempuan', 'JL. KEMUNING RAYA NO 378 PERUM SENDANG MULYO SMG', '', 'Farmasi'),
('13.425', 'SUCI NUR AMALIAH', 'Perempuan', 'SEMAT RT6  /  RW 3  TAHUNAN,  JEPARA', '', 'Farmasi'),
('13.426', 'SYFA HIDYANTARI LUHITA', 'Perempuan', 'WONOLOPO RT03  /  RW  07, MIJEN  SEMARANG', '', 'Farmasi'),
('13.427', 'TIWA  MARLINA', 'Perempuan', 'JL. TEGALSARI  TIMUR I RT 07 /  04 SEMARANG', '', 'Farmasi'),
('13.428', 'IDYA ARIES ANGGRAINI', 'Perempuan', 'KALIKANGKUNG RT 03  / 01  NGALIYAN  SEMARANG', '', 'Farmasi'),
('13.429', 'VIGA ARIYAN OKTA LUSIANI', 'Perempuan', 'JL KEMBANG JERUK III NO 21  TLOGOSARI  SEMARANG', '', 'Farmasi'),
('13.430', 'VILA WULANDARI', 'Perempuan', 'JL. KEBONHARJO  RT 06  RW 08', '', 'Farmasi'),
('13.431', 'VIVI OCITA', 'Perempuan', 'JL. BLEDAK ANGGUR  IV/ 17', '', 'Farmasi'),
('13.432', 'WIANDARI DWI ASTUTI', 'Perempuan', 'JL. BLEDAK KANTIL VI, TLOGOSARI,  SEMARANG', '', 'Farmasi'),
('13.433', 'WIDYA  RODIANA', 'Perempuan', 'WARU,  RT 02RW 4 , REMBANG', '', 'Farmasi'),
('13.434', 'YASINTA NUR ANNISA', 'Perempuan', 'SLUKE, RT4 RW II,  REMBANG', '', 'Farmasi'),
('13.435', 'YULI RAHAYU', 'Perempuan', 'JL CEMARA RAYA NO 39, BANYUMANIK, SEMARANG', '', 'Farmasi'),
('13.436', 'ADELIA PUTRI  BELASANTI', 'Perempuan', 'PERUM PONDOK RADEN PATAH BLOK 12 N0 19 ,SAYUNG , DEMAK', '', 'Farmasi'),
('13.437', 'AMALIA EL-MUTIA', 'Perempuan', 'JL. NGABLAK INDAH 4 RT 3 RW 1, SEMARANG', '', 'Farmasi'),
('13.438', 'ANGGI  PERMATA SARI', 'Perempuan', 'JL. PUCANG ASRI  3 N0 29 PUCANG GADING', '', 'Farmasi'),
('13.439', 'ANISA FAJAR ARIYANI', 'Perempuan', 'JL. KANTIL SARI RT1/1 SRONDOL KULON, BANYUMANIK', '', 'Farmasi'),
('13.440', 'APRILIA YUNITA IKA  SAFITRI', 'Perempuan', 'JL. KARANG TENGAH 1 RT 1/03 GENUKSARI', '', 'Farmasi'),
('13.441', 'ASRINI  AMBARWATI', 'Perempuan', 'KP. KALILANGSE NO 478 RT 2 /3 GAJAH MUNGKUR', '', 'Farmasi'),
('13.442', 'AUDIA ISHLAH UMARA', 'Perempuan', 'JL. KARANG TENGAH  II RT 02/ RW 3 , GENUKSARI', '', 'Farmasi'),
('13.443', 'AULIA FIRDA PUSPARINI', 'Perempuan', 'JL. SIDODRAJAT X NO 55 RT 03 RW 03 MUKTIHARJO KIDUL, PEDURUNGAN', '', 'Farmasi'),
('13.444', 'DEVITA DWITAMA STYA NUGRAHA', 'Perempuan', 'MUKTI HARJO KIDUL RT 08 RW 5', '', 'Farmasi'),
('13.445', 'DIAH  FEBRI YANTI', 'Perempuan', 'JL. KAUMAN MRANGGEN', '', 'Farmasi'),
('13.446', 'DIAH PUJI LARASATI', 'Perempuan', 'JL. SUKUN RAYA NO 41 BANYUMANIK SEMARANG', '', 'Farmasi'),
('13.447', 'FAHMI ESA  FIRA SHIHAB', 'Laki-laki', 'DESA PURWAHAMBA KEC. SURADADI , KAB. TEGAL', '', 'Farmasi'),
('13.448', 'HANI FAUZIZAH', 'Perempuan', 'DESA  GEBANG KULON  RT04  RW 04 BONANG DEMAK', '', 'Farmasi'),
('13.449', 'HANIK AYU PRAMESTI', 'Perempuan', 'JL. LAMPER TENGAH X NO. 44', '', 'Farmasi'),
('13.450', 'IDA KARTIKA KUMALA SARI  DEWI', 'Perempuan', 'JL. BUKIT BERINGIN LESTARI VIII B 162 04/14', '', 'Farmasi'),
('13.451', 'ILAVI ZAHRANI PRAMADIASARI', 'Perempuan', 'JL. TAMPOMAS UTARA  3 NO 20 RT 07 RW 04  PELOMPON GAJAH MUNGKUR', '', 'Farmasi'),
('13.452', 'INDRIA ADE SAPUTRI', 'Perempuan', 'JL. SUKUN I NO 13 , BANYUMANIK RT 02 RW 02', '', 'Farmasi'),
('13.453', 'INTANINGTYAS PUTIH UTAMI', 'Perempuan', 'JL. KEBON ARUM  UTARA  RAYA N0.28 PUCANG GADING', '', 'Farmasi'),
('13.454', 'JOKIE NIMAS PERMATA  PUTRI', 'Perempuan', 'JL. MLATI HARJO PERBALAN  512', '', 'Farmasi'),
('13.455', 'KIREI FITRIANI S', 'Perempuan', 'PERUM  TEMBALANGREGENCY BLOK 04/19', '', 'Farmasi'),
('13.456', 'LUFTIANI SARAH DEBI', 'Perempuan', 'GUBUG, JATI PECARON RT 03 RW 03', '', 'Farmasi'),
('13.457', 'MULIA JUWITA TITANIA', 'Perempuan', 'JL. MUSTAKA  WENI TANGAH  6', '', 'Farmasi'),
('13.458', 'NADYA  AYU  YOHANA', 'Perempuan', 'JL. PEDURUNGAN KIDUL RT 06 RW 12', '', 'Farmasi'),
('13.459', 'NAFADELLA FIRDAUSY WALUYO', 'Perempuan', 'JL. SYUHADA UTARA RT4 RW 20', '', 'Farmasi'),
('13.460', 'NINDA NUR FEBRIANI', 'Perempuan', 'JL PUCANG ANOM TIMUR X/19 RT 01 RW 20  PUCANG GADING', '', 'Farmasi'),
('13.461', 'NUR  HALIMAH', 'Perempuan', 'JL. LAMPER TENGAH V NO 21 RT 03 RW VII SEMARANG', '', 'Farmasi'),
('13.462', 'OKTAVIANI CHOIRUN NISA', 'Perempuan', 'JL. KAUMAN RT 01 RW 05 BANJARDOWO GENUK, SEMARANG', '', 'Farmasi'),
('13.463', 'RAKA AJI PANGESTU', 'Laki-laki', 'TRI MULYO RT 03 RW03 GENUK  SEMARANG', '', 'Farmasi'),
('13.464', 'RIA RAHAYU  MAYKAWATI', 'Perempuan', 'WONOKERTO RT 02 RW 04 KARANG TENGAH, DEMAK', '', 'Farmasi'),
('13.465', 'ROSIE NURUL ', 'Perempuan', 'JL. BHAYANGKA NO 2 DEMAK', '', 'Farmasi'),
('13.466', 'SHOFWATUL UDZMA', 'Perempuan', 'JL. SETASIUN JERAKAH NO 14 B', '', 'Farmasi'),
('13.467', 'SHOFWATUL NUR MAJID', 'Perempuan', 'JL. KARONSIH SELATAN 7 ', '', 'Farmasi'),
('13.468', 'TIARA ICHA', 'Perempuan', 'CLOWOK RT 01 RW 5 , BANDUNGAN', '', 'Farmasi'),
('13.469', 'TRISA NUR AFIANI', 'Perempuan', 'JL. JAMBU V N0 3 PERUMNAS  WINONG PATI', '', 'Farmasi'),
('13.470', 'YATIK  FIDYANINGRUM', 'Perempuan', 'JL PENGAPON  KAMPUNG PENJARINGAN 06/01 SEMARANG', '', 'Farmasi'),
('13.471', 'YESSY APRELIA', 'Perempuan', 'JL. PARANG KEMBANG 4 NO 7 RT 03 / RW 20 TLOGOSARI', '', 'Farmasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(10) NOT NULL auto_increment,
  `user` varchar(30) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY  (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `user`, `pass`, `nama`) VALUES
(2, 'eko', 'b5bcf365578ae13d412aa72b6dc90f12', 'Eko Jatmiko'),
(3, 'yogi', '938e14c074c45c62eb15cc05a6f36d79', 'Prayogi');
