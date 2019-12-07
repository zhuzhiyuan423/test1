<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'form1.jsp' starting page</title>
    
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
  <input type="text" id="uname"><br><br>
 <input type="text" id="upass"><br><br>
 <input type="text" id="birthday"><br><br>
 <input type="text" id="pic"><br><br>
 <button id="zc">注册</button>
  </body>
</html>
<<script type="text/javascript">
    $("#uname").textbox({
    width:"180px",
    prompt:"请输入用户名",
    iconCls: "icon-man",
    iconAlign: "left",
    required: true
    })
    
    $("#upass").passwordbox({
    width:"180px",
    prompt:"请输入密码",
    showEye:true,    
    required: true,
    iconAlign: "left"

    })
    
    $("birthday").datebox({
     width:"180px",
     prompt:"请输入日期"
    })
$("#pic").filebox({
    width:"180px",
    prompt: "请悬着文件",
    buttonText: "浏览"
 })
 
 $("#zc").linkbutton({
    iconCls: "icon-ok",
    iconAlign: "left"
 })
 
 $("zc").click(function(e){
    $.messager.confirm("确定","是否确定注册？",function(e){
     if(e){
      $.messager.alert("提示", "恭喜注册成功");
     }
    })
 })
 


</script>
