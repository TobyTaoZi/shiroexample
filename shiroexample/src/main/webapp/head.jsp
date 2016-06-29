<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/includ/common.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
 <link type="text/css" rel="stylesheet" href="<%=request.getContextPath()%>/css/top.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/menu.js"></script>
  <body>
    <div id="header">
	<div class="logo">后台管理系统</div>
	<div class="navigation">
		 	欢迎您！<shiro:principal/> 
		 	<a>退出</a>
	</div>
</div>
  </body>
</html>
