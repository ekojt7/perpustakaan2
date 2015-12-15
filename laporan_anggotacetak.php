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
	$this->SetFont('Arial','',17);
    $this->SetTextColor(255,0,0);
	
	//tampilkan judul laporan
	$judul = "LAPORAN DATA ANGGOTA PERPUSTAKAAN";
	$this->Cell(0,10, $judul, '0', 1, 'C');
		
    $this->SetFont('Arial','',9);
    $this->SetTextColor(0,0,0);
    
		$this->Cell(20,10,"NIS",1,0,'C',true);
		$this->Cell(55,10,"Nama",1,0,'C',true);
		$this->Cell(25,10,"Jenis Kelamin",1,0,'C',true);
		$this->Cell(40,10,"Alamat",1,0,'C',true);
		$this->Cell(30,10,"No.HP",1,0,'C',true);
		$this->Cell(25,10,"Jurusan",1,0,'C',true);
		
		// ganti  warna fill untuk membedakan cell
	$this->SetFillColor(255,255,255);

	// query ke MySQL database
    $cari = $_POST['cari'];
    $katakunci = $_POST['katakunci'];
        
    if ($cari == 'semua'){
        $query = "SELECT * FROM siswa";
    }
    else {
       $query = "SELECT * FROM siswa WHERE $cari LIKE '%$katakunci%'"; 
    }
    $hasil_query = mysql_query($query); 

	// parsing hasil query
	// tampilkan dengan fungsi FPDF
	while($hasil = mysql_fetch_array($hasil_query)){
		// ganti baris
		$this->Ln();

		// tampilkan cell
		$this->Cell(20,8,$hasil["nis"],1,0,'L',true);
		$this->Cell(55,8,$hasil["nama"],1,0,'L',true);
		$this->Cell(25,8,$hasil["jenkel"],1,0,'L',true);
		$this->Cell(40,8,$hasil["alamat"],1,0,'L',true);
		$this->Cell(30,8,$hasil["no_hp"],1,0,'L',true);
		$this->Cell(25,8,$hasil["jurusan"],1,0,'L',true);
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
