<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/includ/common.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'userList.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-2.0.0.min.js"></script>
	<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/jquery-ui"></script>
	<link href="http://www.francescomalagrino.com/BootstrapPageGenerator/3/css/bootstrap-combined.min.css" rel="stylesheet" media="screen">
	<script type="text/javascript" src="http://www.francescomalagrino.com/BootstrapPageGenerator/3/js/bootstrap.min.js"></script>
  </head>
  
  <body>
    <table class="table">
				<thead>
					<tr>
						<th>编号</th>
						<th>用户名</th>
						<th>密码</th>
						<th>邮件</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${tbUserList }" var="user" varStatus="bg">
						<c:if test="${bg.index%2 == 0 }">
							<tr>
						</c:if>
						<c:if test="${bg.index%2 != 0 }">
							<tr class="success">
						</c:if>
								<td><c:out value="${bg.index + 1 }"/></td>
								<td><c:out value="${user.username}"/></td>
								<td><c:out value="${user.password}"/></td>
								<td><c:out value="${user.useremail} "/> </td>
								<td></td>
							</tr>
					</c:forEach>
				</tbody>
			</table>
  </body>
</html>
