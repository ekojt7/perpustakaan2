<?php
define('FPDF_FONTPATH','fpdf/font/');
require ('fpdf/fpdf.php');
include "koneksi.php";

class PDF extends FPDF
{
	//Page header
	function Header()
	{
		//Logo
		$this->Image('smkyaphar.jpg',10,8);
		//Arial bold 15
		$this->SetFont('Arial','B',15);
		//pindah ke posisi ke tengah untuk membuat judul
		$this->Cell(80);
		//judul
		$this->Cell(30,10,'PERPUSTAKAAN SMK YAYASAN PHARMASI SEMARANG',0,0,'C');
		
		//pindah baris
		$this->Ln(20);
		//buat garis horisontal
		$this->Line(10,25,200,25);
	}
 
	//Page Content
	function Content()
	{
		$this->SetFont('Times','',12);
		


	// menentukan warna background tulisan (format RGB)
	$this->SetFillColor(17,145,238);

	// menentukan warna drawing line
	$this->SetDrawColor(85,85,85);

	// menentukan jenis, ketebalan, dan ukuran font
	// SetFont("jenis", "ketebalan (B untuk bold)", "ukuran");
	$this->SetFont('Arial','',9);
	
	//tampilkan judul laporan
	$judul = "LAPORAN DATA SISWA";
	$this->Cell(0,10, $judul, '0', 1, 'C');
		
		$this->Cell(20,5,"NIS",1,0,'C',true);
		$this->Cell(55,5,"Nama",1,0,'C',true);
		$this->Cell(25,5,"Jenis Kelamin",1,0,'C',true);
		$this->Cell(40,5,"Alamat",1,0,'C',true);
		$this->Cell(30,5,"No.HP",1,0,'C',true);
		$this->Cell(25,5,"Jurusan",1,0,'C',true);
		
		// ganti  warna fill untuk membedakan cell
	$this->SetFillColor(255,255,255);

	// query ke MySQL database
	$hasil_query = mysql_query("SELECT * FROM siswa"); 

	// parsing hasil query
	// tampilkan dengan fungsi FPDF
	while($hasil = mysql_fetch_array($hasil_query)){
		// ganti baris
		$this->Ln();

		// tampilkan cell
		$this->Cell(20,5,$hasil["nis"],1,0,'C',true);
		$this->Cell(55,5,$hasil["nama"],1,0,'L',true);
		$this->Cell(25,5,$hasil["jenkel"],1,0,'L',true);
		$this->Cell(40,5,$hasil["alamat"],1,0,'L',true);
		$this->Cell(30,5,$hasil["no_hp"],1,0,'L',true);
		$this->Cell(25,5,$hasil["jurusan"],1,0,'L',true);
	}

		
	}
 
	//Page footer
	function Footer()
	{
		//atur posisi 1.5 cm dari bawah
		$this->SetY(-15);
		//buat garis horizontal
		$this->Line(10,$this->GetY(),200,$this->GetY());
		//Arial italic 9
		$this->SetFont('Arial','I',9);
		//nomor halaman
		$this->Cell(0,10,'Perpustakaan SMK Yayayasan Pharmasi            Hal '.$this->PageNo().' dari {nb}',0,0,'R');
	}
}
 
//contoh pemanggilan class
$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->Content();
$pdf->Output();
?>