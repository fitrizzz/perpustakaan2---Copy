<?php
    session_start();
    include "conn.php";
    include "s_fungsi.php";

    if(isset($_GET["id"])){
        $id = $_GET["id"];

        if($id == NULL){
            echo "<script>alert('akun tidak dapat dijumpai?')</script>";
        }else{

            $sql = "SELECT * FROM pengguna WHERE pengguna_id = $id";
            $result_pengguuna = mysqli_query($conn,$sql);
            $result_pengguuna = mysqli_fetch_assoc($result_pengguuna);
            // var_dump($result_pengguuna);

            $sql2 = "SELECT * FROM staff WHERE staff_id = $id";
            $result_staff = mysqli_query($conn,$sql2);
            $result_staff = mysqli_fetch_assoc($result_staff);
            
            if($result_pengguuna != NULL AND $result_staff == NULL){
                $_SESSION["id"] = $result_pengguuna["pengguna_id"];
                $_SESSION["pass"] = $result_pengguuna["password"];
                $_SESSION["nama"] = $result_pengguuna["nama_pengguna"];
                $_SESSION["email"] = $result_pengguuna["email"];
    
                header("Location: p_home.php");

            }else if($result_pengguuna == NULL AND $result_staff != NULL){
                $_SESSION["id"] = $result_staff["staff_id"];
                $_SESSION["nama"] = $result_staff["staff_nama"];
                $_SESSION["pass"] = $result_staff["password"];
                $_SESSION["email"] = $result_staff["staff_email"];
                $_SESSION["role"] = $result_staff["role"];
                
    
                header("Location: s_home.php");
                
            }else{
            echo "<script>alert('akun tidak dapat dijumpai?')</script>";
            }


        }


    }

    if(isset($_POST["hantar"])){
        $nama = $_POST["nama"];
        $pass = $_POST["pass"];
        // echo $nama . $pass;
        // var_dump($nama);
        // var_dump($pass);

        $sql = "SELECT * FROM pengguna WHERE nama_pengguna = '$nama' AND password = '$pass'";
        $result = mysqli_query($conn,$sql);

        if($row = mysqli_fetch_assoc($result)){
            // echo "pengguna";
            $_SESSION["id"] = $row["pengguna_id"];
            $_SESSION["pass"] = $row["password"];
            $_SESSION["nama"] = $row["nama_pengguna"];
            $_SESSION["email"] = $row["email"];
            $_SESSION["role"] = "pengguna";

            header("Location: p_home.php");

        }else{
            $sql = "SELECT * FROM staff WHERE staff_nama = '$nama' AND password = '$pass'";
            $result = mysqli_query($conn,$sql);

            if($row = mysqli_fetch_assoc($result)){
                // echo "satff";

                $_SESSION["id"] = $row["staff_id"];
                $_SESSION["nama"] = $row["staff_nama"];
                $_SESSION["pass"] = $row["password"];
                $_SESSION["email"] = $row["staff_email"];
                $_SESSION["role"] = $row["role"];
                
    
                header("Location: s_home.php");

            }else{
                    echo "AKUN TIDAK DAPAT DIJUMPAI";
            }
        }
    }
?>

<html>
    <br>
<a href="login.php">LOGIN</a>
<a href="daftar.php">DAFTAR</a>
    <body>
        <form action="login.php" method="POST">
            <input type="text" placeholder="usernama" name="nama" required>
            <input type="password" placeholder="password" name="pass" required>
            <button type="submit" name="hantar">LOGIN</button>
        </form>
        <a href="login_pantas.php">login_pantas</a>
        <a href="pinjam_buku_pantas.php">pinjam_buku_pantas</a>
    </body>
</html>