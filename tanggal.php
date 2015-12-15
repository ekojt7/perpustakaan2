<html>
<head>
<title>Date and Time PHP</title>

</head>
<body>
<?php
$tgl_dateline     = "15-04-2007";
$tgl_kembali     = "19-04-2007";

$tgl_dateline_pcs = explode ("-", $tgl_dateline);
$tgl_dateline_pcs = $tgl_dateline_pcs[2]."-".$tgl_dateline_pcs[1]."-".$tgl_dateline_pcs[0];

$tgl_kembali_pcs = explode ("-", $tgl_kembali);
$tgl_kembali_pcs = $tgl_kembali_pcs[2]."-".$tgl_kembali_pcs[1]."-".$tgl_kembali_pcs[0];

$selisih = strtotime ($tgl_kembali_pcs) - strtotime ($tgl_dateline_pcs);

$selisih = $selisih / 86400;

echo "Detline : $tgl_dateline, pengembalian : $tgl_kembali";
echo "<br>Terlambat ".floor ($selisih)." hari.";
?>
</body>
</html>
