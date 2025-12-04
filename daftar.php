<?php
    include "conn.php";
    include "s_fungsi.php";

    if(isset($_POST["hantar"])){
        $nama = $_POST["nama"];
        $pass = $_POST["pass"];
        $email = $_POST["email"];
        


        if(semak($nama)){
            // echo "fail";
                echo "<script>alert('Username telah ada sila guna yang lain')</script>";
                
        }else{
            // echo "good";
            $num = mt_rand(1000000,9999999);
            $sql = "INSERT INTO pengguna VALUES($num,'$pass','$nama','$email')";
            mysqli_query($conn,$sql);
            echo "<script>alert('BERJAYA DAFTAR SILA LOGIN')</script>";

        } 

    }
?>

<html>
    <body>
    <a href="login.php">LOGIN</a>
    <a href="daftar.php">DAFTAR</a>
        <form action="daftar.php" method="POST">
            <input type="text" name="nama" placeholder="username" required><br>
            <input type="password" name="pass" placeholder="password" required><br>
            <input type="email" name="email" placeholder="email" required><br>
            <button type="submit" name="hantar">DAFTAR</button>
        </form>
    </body>
</html>
