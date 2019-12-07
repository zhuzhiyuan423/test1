<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- 引入css -->
	<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.5.5/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="js/jquery-easyui-1.5.5/themes/icon.css">
  <!-- 引入js -->
  <script type="text/javascript" src="js/jquery-easyui-1.5.5/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery-easyui-1.5.5/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="js/jquery-easyui-1.5.5/locale/easyui-lang-zh_CN.js"></script> 
  </head>
  
  <body>
   <div id="div1"></div>
   <a id="a1">添加</a>
   <div id="div2"></div>
  </body>
  
</html>
<script >
 $("#div2").slider({
  width:"400px",
  height: "40px",
  min:"0",
  max:"100",
  rule: [0,"|",25,"|",50,"|",75,"|",100] ,
  showTip: "true",
  tipFormatter: function(v){
  return v+"%";
  } 
  
 })
 
 $("#a1").linkbutton({
   iconCls: "icon-add",
   iconAlign: "right"
 });
 
 $("#div1").progressbar({
   value: 0,
   width: "400px"
 });
 
 var timer;
 function start(){
  var v=$("#div1").progressbar("getValue");
  if(v<100){
   v+=1;
   $("#div1").progressbar("seVvalue",v);
  }else{
   clearInterval(timer);
  }
 }
 timer=setInterval(start,1000);
 
</script>

