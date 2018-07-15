<?php
require_once("../init.php");
$sql="SELECT * FROM `index_product_children`where seq_recommended!=0 order by seq_recommended";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));