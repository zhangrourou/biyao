<?php
////登录功能
//   require_once("../init.php");
//   @$uname=$_REQUEST["uname"];
//   @$upwd=$_REQUEST["upwd"];
////   echo 1;
////   echo $uname.'_'.$upwd;
//   if($uname!=null && $upwd!=null){
//   	$sql="select * from biy_user where uname='$uname' and binary upwd='$upwd'";
//   	$result=mysqli_query($conn,$sql);
//   	$row=mysqli_fetch_row($result);
//   	if($row!=null){
//   		session_start();
//   		$_SESSION["uid"]=$row[0];
//   		echo "登录成功!";
//   	}else
//   		echo "用户名或密码错误!";
//   }


//1:设置响应头格式为json
header("Content-Type:application/json;charset-utf-8");
//2:连接数据库
$conn = mysqli_connect("127.0.0.1","root","","biy",3306);
//3:设置查询编码为 utf8
mysqli_query($conn,"SET NAMES UTF8");
//4:获取参数 $uname $upwd
@$uname = $_REQUEST["uname"];
@$upwd = $_REQUEST["upwd"];
//echo 1;
//echo $uname."_".$upwd;
//5:创建正则表达式验证用户输入 uname upwd
//6:如果用户输入格式不正确提示错误信息
$reg ='/^[a-zA-Z0-9]{3,12}$/';
$rs = preg_match($reg,$uname);
if(!$rs){
    die('{"code":-1,"msg":"用户名格式不正确"}');
}
$rs = preg_match($reg,$upwd);
if(!$rs){
    die('{"code":-1,"msg":"密码格式不正确"}');
}
//7:创建SQL语句查询该用户是否存在
    //注意大小写：表名/列名/库名  全小写
$sql="SELECT uid FROM biy_user WHERE uname='$uname' AND upwd='$upwd'";
$result=mysqli_query($conn,$sql);
if(mysqli_error($conn)){
    echo mysqli_error($conn);
}
//echo 1;
//8:发送sql语句并且获得返回结果
$row=mysqli_fetch_row($result);
//var_dump($row);
//9:输出登录结果
if($row===null){
    echo '{"code":-1,"msg":"用户名或密码错误，请重试！"}';
}else{
    session_start();
    $_SESSION["uid"]=$row[0];
    echo '{"code":1,"msg":"登录成功"}';
}


