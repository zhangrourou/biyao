<?php
//商品列表
//header("Content-Type","application/x-www-from-urlencode");
header("Content-Type:application/json;charset-utf-8");
//1.加载init.php 文件；
require_once("../init.php");
//$sql="SELECT * FROM `man_short`where seq_recommended!=0 order by seq_recommended";
//$result=mysqli_query($conn,$sql);
//echo json_encode(mysqli_fetch_all($result,1));

//2.获取参数pno pageSize;
@$pno=$_REQUEST["pno"];
@$pageSize=$_REQUEST["pageSize"];

//3.如第二个参数进行判断，如果参数无效设置默认值 pno=1 pageSize=8；
if(!$pno){
    $pno=1;
}
if(!$pageSize){
    $pageSize=20;
}
//echo $pno."|".$pageSize;

//4.创建正则表达式对参数进行验证；
$reg='/^[0-9]{1,}$/';
$rs=preg_match($reg,$pno);
if(!$rs){
    die('{"code":-1,"msg":"页大小格式不正确"}');
}
$rs=preg_match($reg,$pageSize);
if(!$rs){
    die('{"code":-1,"msg":"页大小格式不正确"}');
}

//5.创建sql语句查询总记录数；
$sql="SELECT count(pid) as c FROM man";
$rs=mysqli_query($conn,$sql);
//判断sql语句出错了
if(mysqli_error($conn)){
    echo mysqli_error($conn);
}
//抓取一行结果
$row=mysqli_fetch_row($rs);
//var_dump($row);
$pageCount=ceil($row[0]/$pageSize);
//echo $pageCount;

//6.创建sql语句查询当前页面；
$offset=($pno-1)*$pageSize;
$sql="SELECT pid,title,pic,price,href FROM man LIMIT $offset,$pageSize";
$rs=mysqli_query($conn,$sql);


//判断sql语句出错了
if(mysqli_error($conn)){
    echo mysqli_error($conn);
}
//抓取全部结果
$rows = mysqli_fetch_all($rs,MYSQLI_ASSOC);
//var_dump($rows);
//7.返回结果；
$output=["pno"=>$pno,"pageSize"=>$pageSize,"pageCount"=>$pageCount,"data"=>$rows];
echo json_encode($output);
