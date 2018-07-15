<?php
//data/cart/deleteCart.php
require_once("../init.php");
@$iid=$_REQUEST["iid"];
if($iid!=null){
	$sql="delete from biy_shoppingcart where iid=$iid";
	mysqli_query($conn,$sql);
}