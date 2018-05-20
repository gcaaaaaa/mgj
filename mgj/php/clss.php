<?php
   header('content-type:text/html;charset=utf-8');
   //链接数据库
   $conn=@mysql_connect('localhost','root','');
	if(!$conn){
		die('数据库连接失败'.mysql_error());
	}
	//设置字符集
	mysql_select_db('mgj');
	mysql_query('SET NAMES UTF8');
	$query='select * from clss';//这是一条查询sql语句
	
	$result=mysql_query($query);//执行sql语句,存储结果
	//print_r(mysql_fetch_array($result,MYSQL_ASSOC));//返回记录集的第一条记录，同时也是一个数组
	//print_r(mysql_fetch_array($result,MYSQL_ASSOC));//第二条
	
	//echo mysql_num_rows($result); //返回记录集的条数
	$arr=array();
	for($i=0;$i<mysql_num_rows($result);$i++){
		$arr[$i]=mysql_fetch_array($result,MYSQL_ASSOC);//数组的每一项是另外一个数组，二维数组
	};
	echo json_encode($arr);
	
?>