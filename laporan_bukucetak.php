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
	$judul = "LAPORAN DATA BUKU PERPUSTAKAAN";
	$this->Cell(0,10, $judul, '0', 1, 'C');
     
    $cari = $_POST['cari'];
    $katakunci = $_POST['katakunci'];
    
    $this->SetFont('Arial','',9);
    $this->SetTextColor(0,0,0);
    
    if ($cari == 'semua'){
     $this->Cell(25,10,"No.Inv",1,0,'C',true);
     $this->Cell(120,10,"Judul",1,0,'C',true);
     $this->Cell(20,10,"Rak",1,0,'C',true);
     $this->Cell(20,10,"Jumlah",1,0,'C',true);
		
		// ganti  warna fill untuk membedakan cell
	   $this->SetFillColor(255,255,255);

	// query ke MySQL database
    $query = "SELECT no_inv,judul,rak,jumlah FROM buku ORDER BY rak";
    $hasil_query = mysql_query($query); 

	// parsing hasil query
	// tampilkan dengan fungsi FPDF
	while($hasil = mysql_fetch_array($hasil_query)){
		// ganti baris
		$this->Ln();

		// tampilkan cell
		$this->Cell(25,8,$hasil["no_inv"],1,0,'L',true);
		$this->Cell(120,8,$hasil["judul"],1,0,'L',true);
        $this->Cell(20,8,$hasil["rak"],1,0,'C',true);
		$this->Cell(20,8,$hasil["jumlah"],1,0,'C',true);
	}

    
}

elseif ($cari == 'rak'){
     $this->Cell(25,10,"No.Inv",1,0,'C',true);
     $this->Cell(120,10,"Judul",1,0,'C',true);
     $this->Cell(20,10,"Rak",1,0,'C',true);
     $this->Cell(20,10,"Jumlah",1,0,'C',true);
		
		// ganti  warna fill untuk membedakan cell
	   $this->SetFillColor(255,255,255);

	// query ke MySQL database
   $query = "SELECT no_inv,judul,rak,jumlah FROM buku WHERE $cari LIKE '%$katakunci%'"; 
    $hasil_query = mysql_query($query); 

	// parsing hasil query
	// tampilkan dengan fungsi FPDF
	while($hasil = mysql_fetch_array($hasil_query)){
		// ganti baris
		$this->Ln();

		// tampilkan cell
		$this->Cell(25,8,$hasil["no_inv"],1,0,'L',true);
		$this->Cell(120,8,$hasil["judul"],1,0,'L',true);
		$this->Cell(20,8,$hasil["rak"],1,0,'C',true);
		$this->Cell(20,8,$hasil["jumlah"],1,0,'C',true);
	}
    
}

elseif ($cari == 'penerbit'){
    $this->Cell(25,10,"No.Inv",1,0,'C',true);
     $this->Cell(120,10,"Judul",1,0,'C',true);
     $this->Cell(20,10,"Penerbit",1,0,'C',true);
     $this->Cell(20,10,"Jumlah",1,0,'C',true);
		
		// ganti  warna fill untuk membedakan cell
	   $this->SetFillColor(255,255,255);

	// query ke MySQL database
   $query = "SELECT no_inv,judul,penerbit,jumlah FROM buku WHERE $cari LIKE '%$katakunci%'"; 
    $hasil_query = mysql_query($query); 

	// parsing hasil query
	// tampilkan dengan fungsi FPDF
	while($hasil = mysql_fetch_array($hasil_query)){
		// ganti baris
		$this->Ln();

		// tampilkan cell
		$this->Cell(25,8,$hasil["no_inv"],1,0,'L',true);
		$this->Cell(120,8,$hasil["judul"],1,0,'L',true);
		$this->Cell(20,8,$hasil["penerbit"],1,0,'C',true);
		$this->Cell(20,8,$hasil["jumlah"],1,0,'C',true);
	}
    
    
}

elseif ($cari == 'kategori'){
    $this->Cell(25,10,"No.Inv",1,0,'C',true);
     $this->Cell(120,10,"Judul",1,0,'C',true);
     $this->Cell(30,10,"Kategori",1,0,'C',true);
     $this->Cell(15,10,"Jumlah",1,0,'C',true);
		
		// ganti  warna fill untuk membedakan cell
	   $this->SetFillColor(255,255,255);

	// query ke MySQL database
   $query = "SELECT no_inv,judul,kategori,jumlah FROM buku WHERE $cari LIKE '%$katakunci%'"; 
    $hasil_query = mysql_query($query); 

	// parsing hasil query
	// tampilkan dengan fungsi FPDF
	while($hasil = mysql_fetch_array($hasil_query)){
		// ganti baris
		$this->Ln();

		// tampilkan cell
		$this->Cell(25,8,$hasil["no_inv"],1,0,'L',true);
		$this->Cell(120,8,$hasil["judul"],1,0,'L',true);
		$this->Cell(30,8,$hasil["kategori"],1,0,'L',true);
		$this->Cell(15,8,$hasil["jumlah"],1,0,'C',true);
	}
    
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
