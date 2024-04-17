<?php 
 require_once 'functions.php';
    $nik =$_POST['nik'];
    $nama =$_POST['nama'];
    $no_hp =$_POST['no_hp'];
    $jk=$_POST['jk'];
    $alamat =$_POST['alamat'];
    $tgl =$_POST['tgl'];
    
    
    
    $db->query("INSERT INTO tb_hasil(nik, nama, no_hp,jk,alamat,tgl) VALUES('$nik','$nama','$no_hp','$jk','$alamat','$tgl')");
    $db->query("INSERT INTO tb_user(nik, nama_user, no_hp,jk,alamat,tanggal) VALUES('$nik','$nama','$no_hp','$jk','$alamat','$tgl')");
	
	echo "<meta http-equiv='refresh' content='0; url=aksi.php?m=konsultasi&act=new'>";
?>

