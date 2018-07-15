<?php

#整个项目的初始化文件，用于编写所有其他页面都公用的公共内容
#2.使用PHP连接MySQL服务器
$conn = mysqli_connect('127.0.0.1',	'root',	'',	'biy',	'3306');
mysqli_query($conn, 'SET NAMES UTF8');