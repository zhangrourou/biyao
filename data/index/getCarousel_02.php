<?php
//轮播图
require_once("../init.php");
$sql="select * from index_carousel_02";
$result=mysqli_query($conn,$sql);
echo json_encode(mysqli_fetch_all($result,1));