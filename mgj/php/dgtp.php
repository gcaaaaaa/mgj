<?php
header('content-type:text/html;charset=utf-8');
$conn=@mysql_connect('localhost','root','');
	if(!$conn){
		die('数据库连接失败'.mysql_error());
	}
	mysql_select_db('mgj');
	mysql_query('SET NAMES UTF8');
	
	
	
	
	
	$query='select * from dgtp';
	$result=mysql_query($query);
	$arr=array();
	for($i=0;$i<mysql_num_rows($result);$i++){
		$arr[$i]=mysql_fetch_array($result,MYSQL_ASSOC);
	}
    
    
    $query1='select * from dgtp1';
	$result1=mysql_query($query1);
	$arr1=array();
	for($i=0;$i<mysql_num_rows($result1);$i++){
		$arr1[$i]=mysql_fetch_array($result1,MYSQL_ASSOC);
	}
	
	$query2='select * from rmtx';
	$result2=mysql_query($query2);
	$arr2=array();
	for($i=0;$i<mysql_num_rows($result2);$i++){
		$arr2[$i]=mysql_fetch_array($result2,MYSQL_ASSOC);
	}
	
	
	$query3='select * from cnxh';
	$result3=mysql_query($query3);
	$arr3=array();
	for($i=0;$i<mysql_num_rows($result3);$i++){
		$arr3[$i]=mysql_fetch_array($result3,MYSQL_ASSOC);
	}
	
	$query4='select * from rxsp';
	$result4=mysql_query($query4);
	$arr4=array();
	for($i=0;$i<mysql_num_rows($result4);$i++){
		$arr4[$i]=mysql_fetch_array($result4,MYSQL_ASSOC);
	}
	
	$query5='select * from leftlb';
	$result5=mysql_query($query5);
	$arr5=array();
	for($i=0;$i<mysql_num_rows($result5);$i++){
		$arr5[$i]=mysql_fetch_array($result5,MYSQL_ASSOC);
	}
	
	$query6='select * from rxsp1';
	$result6=mysql_query($query6);
	$arr6=array();
	for($i=0;$i<mysql_num_rows($result6);$i++){
		$arr6[$i]=mysql_fetch_array($result6,MYSQL_ASSOC);
	}
	
	$query8='select * from rxsp2';
	$result8=mysql_query($query8);
	$arr8=array();
	for($i=0;$i<mysql_num_rows($result8);$i++){
		$arr8[$i]=mysql_fetch_array($result8,MYSQL_ASSOC);
	}
	class data{
		
	}
	
	$d1=new data();
	$d1->data1=$arr;
	$d1->data2=$arr1;
	$d1->data3=$arr2;
	$d1->data4=$arr3;
	$d1->data5=$arr4;
	$d1->data6=$arr5;
	$d1->data7=$arr6;
	$d1->data8=$arr8;
	
	
	
	
	
	
	echo json_encode($d1);
	
?>