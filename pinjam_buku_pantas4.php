<?php 
    session_start();
    include "conn.php";
    $bukuid = $_SESSION["bukuid"];
    if(isset($_POST["hantar"])){
        $bukuid = $_POST["bukuid"];
        $pid = $_POST["pid"];
        $tpinjam = $_POST["tpinjam"];
        $tpulang = $_POST["tpulang"];

        if($tpulang < $tpinjam ){
            error_reporting(0);
            echo "<script>alert('BIAR BERTUL pinjam $tpinjam pulang $tpulang mana logik')</script>";
            $tpinjam = NULL;
            $tpulang = NULL;

        }else{
            $sql = "UPDATE buku SET status = 'tidak_tersedia' WHERE buku_id = $bukuid";
            $result = mysqli_query($conn,$sql);
        
            $sql = "INSERT INTO pinjam VALUES('','$tpinjam','$tpulang',$pid,NULL,$bukuid,'lulus')";
            $result = mysqli_query($conn,$sql);

            echo "<script>
                    alert ('BERJAYA PINJAM');
                </script>";

                    session_destroy();
                    header('location: login.php');

        }
    }

    if(isset($_GET["pid"])){
        $pid = $_GET["pid"];

        $sql = "SELECT pengguna_id FROM pengguna WHERE pengguna_id = $pid";
        $result = mysqli_query($conn,$sql);

        if(empty(mysqli_fetch_assoc($result))){
            header("location: pinjam_buku_pantas3.php?mesej=err");
        }else{
            echo"
                <form action='pinjam_buku_pantas4.php' method = 'POST'>
                    <input type='text' name='pid' value='$pid' readonly><br>
                    <input type='text' name='bukuid' value='$bukuid' readonly><br>
                    <input type='date' name = 'tpinjam'>
                    <input type='date' name = 'tpulang'>
                    <button type = 'submit' name = 'hantar'>PINJam</button>
                </form>
            ";
        }

    }else{
        echo"
        <form action='pinjam_buku_pantas4.php' method = 'POST'>
            <input type='text' name='pid' value='$pid' readonly><br>
            <input type='text' name='bukuid' value='$bukuid' readonly><br>
            <input type='date' name = 'tpinjam'>
            <input type='date' name = 'tpulang'>
            <button type = 'submit' name = 'hantar'>PINJam</button>
        </form>
    ";
    }
?>
