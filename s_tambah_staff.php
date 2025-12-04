<?php
    session_start();
    include "s_bord.php";
    include "s_fungsi.php";

    if(isset($_POST["tambah"])){
        $nama = $_POST["nama"];
        $pass = $_POST["pass"];
        $email = $_POST["email"];


        if(semak($nama)){
                echo "<script>alert('Username telah ada sila guna yang lain')</script>";
            
            }else{
                $num = mt_rand(100,999);
                $sql = "INSERT INTO staff VALUES ($num,'$pass','$nama','$email')";
                mysqli_query($conn,$sql);
            }
    }
?>
<html>
    <body>
        <div class="conten">
            <form action="s_tambah_staff.php" method="POST">
                <label for="nama">nama : </label>
                    <input type="text" name="nama" htmlspecialchars required>
    
                <label for="pass">password : </label>
                    <input type="text" name="pass" htmlspecialchars required>
    
                <label for="email">email : </label>
                    <input type="email" name="email" htmlspecialchars required>
    
                <button type="submit" name="tambah">TAMBAH</button>
            </form>
        </div>
    </body>
</html>