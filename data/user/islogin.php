<?php
//判断是否登录成功
require_once("../init.php");
session_start();
@$uid=$_SESSION["uid"];
if($uid!=null){
	$sql="select uname from biy_user where uid=$uid";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	echo json_encode(["ok"=>1, "uname"=>$row[0]]);
}else{
	echo json_encode(["ok"=>0]);
}