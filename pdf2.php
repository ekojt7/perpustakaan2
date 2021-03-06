<?php
define('FPDF_FONTPATH','fpdf/font/');
require ('fpdf/fpdf.php');
 
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