<?php
session_start();
include "conn.php";
include "s_bord.php";
include "s_fungsi.php";

if(isset($_POST["hantar"])){
    $nama = $_POST["nama"];
    $pass = $_POST["pass"];
    $email = $_POST["email"];

    if(semak($nama)){
    echo"<script>alert('USER NAMA TELAH ADA SILA GUNA NAMA YANG LAIN');</script>";

    }else{
        $sql = "INSERT INTO pengguna VALUES('','$pass','$nama','$email')";
        mysqli_query($conn,$sql);
        
    
    echo"<script>alert('TAMBAH PENGGUNA BERJAYA');
        window.location.href = 's_senarai_pengguna.php';
    </script>";
    }

}
?>
<html>
    <body>
        <div class="conten">
            <form action="s_tambah_pengguna.php" method="POST">
                <label for="nama">nama : </label>
                <input type="text" name="nama" placeholder="nama" id="">

                <label for="pass">password : </label>
                <input type="text" name="pass" placeholder="password" id="">

                <label for="email">email : </label>
                <input type="text" name="email" placeholder="email" id="">
                <button type="submit" name="hantar">TAMBAH</button>
            </form>
        </div>
    </body>
</html>