<?php
header('content-type:text/html;charset=utf-8');
$conn=@mysql_connect('localhost','root','');
	if(!$conn){
		die('数据库连接失败'.mysql_error());
	}
	mysql_select_db('mgj');
	mysql_query('SET NAMES UTF8');
	
	
	
	
	
	$query='select * from jrbq';
	$result=mysql_query($query);
	$arr=array();
	for($i=0;$i<mysql_num_rows($result);$i++){
		$arr[$i]=mysql_fetch_array($result,MYSQL_ASSOC);
	}
	$query1='select * from jrbq1';
	$result1=mysql_query($query1);
	$arr1=array();
	for($i=0;$i<mysql_num_rows($result1);$i++){
		$arr1[$i]=mysql_fetch_array($result1,MYSQL_ASSOC);
	}
    
    $query2='select * from jrbq2';
	$result2=mysql_query($query2);
	$arr2=array();
	for($i=0;$i<mysql_num_rows($result2);$i++){
		$arr2[$i]=mysql_fetch_array($result2,MYSQL_ASSOC);
	}
	class data{
		
	}
	
	$d1=new data();
	$d1->data1=$arr;	
	$d1->data2=$arr1;	
	$d1->data3=$arr2;	
	
	
	
	
	echo json_encode($d1);
	
?>