<?php
	// import file koneksi
	include_once("koneksi.php"); 

	// include file fpdf.php
	include("fpdf/fpdf.php"); 

	// buat objek FPDF baru dengan pengaturan berikut
	$pdf = new FPDF("P","mm","A4");
	// P = posisi page potrait (L untuk landscape)
	// mm = satuan ukuran yang digunakan
	// A4 = ukuran kertas yang digunakan (A5, A4, F4, dll)

	//buat halaman baru
	$pdf->AddPage();

	// menentukan warna background tulisan (format RGB)
	$pdf->SetFillColor(225,225,225);

	// menentukan warna drawing line
	$pdf->SetDrawColor(205,205,205);

	// menentukan jenis, ketebalan, dan ukuran font
	// SetFont("jenis", "ketebalan (B untuk bold)", "ukuran");
	$pdf->SetFont('Arial','',9);
	
	//tampilkan judul laporan
	$judul = "LAPORAN DATA SISWA";
	$pdf->Cell(0,20, $judul, '0', 1, 'C');

	// header tabel
	$pdf->Cell(20,5,"NIS",1,0,'C',true);
	$pdf->Cell(55,5,"Nama",1,0,'C',true);
	$pdf->Cell(25,5,"Jenis Kelamin",1,0,'C',true);
	$pdf->Cell(40,5,"Alamat",1,0,'C',true);
	$pdf->Cell(30,5,"No.HP",1,0,'C',true);
	$pdf->Cell(25,5,"Jurusan",1,0,'C',true);

	// ganti  warna fill untuk membedakan cell
	$pdf->SetFillColor(0,245,245);

	// query ke MySQL database
	$hasil_query = mysql_query("SELECT * FROM siswa"); 

	// parsing hasil query
	// tampilkan dengan fungsi FPDF
	while($hasil = mysql_fetch_array($hasil_query)){
		// ganti baris
		$pdf->Ln();

		// tampilkan cell
		$pdf->Cell(20,5,$hasil["nis"],1,0,'C',true);
		$pdf->Cell(55,5,$hasil["nama"],1,0,'L',true);
		$pdf->Cell(25,5,$hasil["jenkel"],1,0,'L',true);
		$pdf->Cell(40,5,$hasil["alamat"],1,0,'L',true);
		$pdf->Cell(30,5,$hasil["no_hp"],1,0,'L',true);
		$pdf->Cell(25,5,$hasil["jurusan"],1,0,'L',true);
	}

	$pdf->Output();
	exit();
?>