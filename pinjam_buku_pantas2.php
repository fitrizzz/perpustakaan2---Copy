<?php 
session_start();
    include "conn.php";

    if(isset($_GET["bukuid"])){
        $bukuid = $_GET["bukuid"];

        $sql = "SELECT buku_id FROM buku WHERE buku_id = $bukuid AND status = 'tersedia'";
        $result = mysqli_query($conn,$sql);

        if(empty(mysqli_fetch_assoc($result))){
            header("location: pinjam_buku_pantas.php?mesej=err");
        }else{
            $_SESSION["bukuid"] = $bukuid;
            header("location: pinjam_buku_pantas3.php");
        }

    }
?>