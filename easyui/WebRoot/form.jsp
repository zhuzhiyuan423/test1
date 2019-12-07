<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- 引入css -->
<link rel="stylesheet" type="text/css"
	href="js/jquery-easyui-1.5.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css"
	href="js/jquery-easyui-1.5.5/themes/icon.css">
<!-- 引入js -->
<script type="text/javascript"
	src="js/jquery-easyui-1.5.5/jquery.min.js"></script>
<script type="text/javascript"
	src="js/jquery-easyui-1.5.5/jquery.easyui.min.js"></script>
<script type="text/javascript"
	src="js/jquery-easyui-1.5.5/locale/easyui-lang-zh_CN.js"></script>
</head>

<body>

	<input type="text" id="uname">
	<br>
	<br>
	<input type="text" id="upass">
	<br>
	<br>
	<input type="text" id="birthday">
	<br>
	<br>
	<input type="text" id="pic">
	<br>
	<br>
	<button id="btn1">注册</button>

</body>
</html>
<script>
	$("#btn1").click(function(e) {
		$.messager.confirm("提示测试", "是否确认注册?", function(e) {
		alert(e);
			if (e) {
				$.messager.alert("提示", "恭喜注册成功");
			}else{
			$.messager.alert("提示", "取消成功");
			}
		})

	})

	$("#btn1").linkbutton({
		iconCls : "icon-ok",
		iconAlign : "left"
	})

	$("#pic").filebox({
		width : "180px",
		prompt : "请选择图片",
		buttonText : "浏览"
	})

	$("#uname").textbox({
		width : "180px",
		prompt : "请输入用户名",
		iconCls : "icon-man",
		iconAlign : "left",
		required : true
	})

	$("#upass").passwordbox({
		width : "180px",
		prompt : "请输入密码",
		showEye : "true",
		iconAlign : "left",
		required : true
	})

	$("#birthday").datebox({
		width : "180px",
		prompt : "请悬着日期"
	})
</script>
