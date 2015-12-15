<?php
include "koneksi.php";
$tglA = '2011-06-15';
$tglB = '2011-06-25';

$query = mysql_query("SELECT DATEDIFF('".$tglB."','".$tglA."') AS jml");
$row	= mysql_fetch_array($query);
$denda = 200;
$hitungdenda = $denda * $row['jml'];

echo $row['jml'];
echo "<br>";
echo $hitungdenda;
?>

