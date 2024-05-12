<?php 
session_start();
//if(!$_SESSION['adminid']) header("location:../login/login.php");
?>
<?php require '../config.php';
if(isset($_GET['id'])){
    
    $id=$_GET['id'];
    $sql="DELETE FROM `product` WHERE `id` = $id";
    mysqli_query($db,$sql) or die(mysqli_error($db));
            mysqli_close($db);
           
            $_SESSION['msg']='<div class="alert alert-success" role="alert">Product ' . $id . ' has been deleted !! </div>';
            header("location:index.php");
}


?>