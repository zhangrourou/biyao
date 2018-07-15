<?php
//获得商品的id和用户的id
require_once("../init.php");
session_start();
//@$uid=2;//$_SESSION["uid"];
@$uid=$_SESSION["uid"];
$cart=[];
if($uid!=null){
	$sql="select *,(select sm from biy_laptop_pic where laptop_id=lid limit 1)
	as sm from biy_shoppingcart inner join biy_laptop on product_id=lid where user_id=$uid";
	$result=mysqli_query($conn,$sql);
	$cart=mysqli_fetch_all($result,1);
}
echo json_encode($cart);