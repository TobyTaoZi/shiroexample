<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/includ/common.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>登陆成功</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<body>
	<frameset rows="100,*,26" cols="*" frameborder="NO" border="0" framespacing="0">
			<frame src="top.jsp" name="topFrame" scrolling="no" noresize/>
			<frameset cols="195,6,*" frameborder="NO" border="0" framespacing="0" name="menu">
				<frame src="menu.jsp" name="leftFrame" id="leftFrame" scrolling="no" noresize/>
				<frame src="welcome.jsp" name="midFrame" id="midFrame" scrolling="no" noresize/>
				<frame src="<%=request.getContextPath() %>/welcome.jsp" name="main" id="main" scrolling="auto" noresize/>
			</frameset>
			<frame src="bottom.jsp" name="bottomFrame" scrolling="no" noresize/>
	</frameset>
</body>
</html>
