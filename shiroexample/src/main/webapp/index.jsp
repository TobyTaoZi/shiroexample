<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/includ/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html>
<head>
<title>欢迎登陆</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<link rel="shortcut icon" href="../favicon.ico">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/demo.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/animate-custom.css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.js"></script>
</head>
<frameset rows="80,*"  frameborder="no" border="0" framespacing="0">
    <!--头部-->
    <frame src="<%=request.getContextPath()%>/top.jsp" name="top" noresize="noresize" frameborder="0"  scrolling="no" marginwidth="0" marginheight="0" />
    <!--主体部分-->
    <frameset cols="200,*">
        <!--主体左部分-->
        <frame src="<%=request.getContextPath()%>/left.jsp" name="left" noresize="noresize" frameborder="0" scrolling="no" marginwidth="1" marginheight="0" />
        <!--主体右部分-->
        <frame src="<%=request.getContextPath()%>/main.jsp" name="main" frameborder="0" scrolling="auto" marginwidth="0" marginheight="0" />
</frameset>
</html>