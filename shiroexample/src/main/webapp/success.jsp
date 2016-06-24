<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/includ/common.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>success</title>
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
	<div align="center">
		<shiro:hasRole name="admin">
  			欢迎有admin角色的用户！<shiro:principal />
		</shiro:hasRole>
		<shiro:hasPermission name="student:create">
			欢迎有student:create权限的用户！<shiro:principal />
		</shiro:hasPermission>
		<shiro:hasRole name="teacher">
			老师才有此权限<shiro:principal />
		</shiro:hasRole>
		<form action="<%=request.getContextPath()%>/login/loginOut.do">
			<input type="submit" value="login out">
		</form>
	</div>
</body>
</html>
