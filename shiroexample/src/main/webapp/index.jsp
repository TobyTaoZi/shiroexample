<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/includ/common.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'index.jsp' starting page</title>
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
<body>
	<div class="container">
		<!-- Codrops top bar -->
		<div class="codrops-top">
			<div class="clr"></div>
		</div>
		<!--/ Codrops top bar -->
		<header>
			<h1>
				<spring:message code="welcome" />
			</h1>
		</header>
		<section>
		<div id="container_demo">
			<a class="hiddenanchor" id="toregister"></a> <a class="hiddenanchor"
				id="tologin"></a>
			<div id="wrapper">
				<div id="login" class="animate form">
					<form action="<%=request.getContextPath()%>/login/dologin.do"
						autocomplete="on" method="post">
						<h1>Log in</h1>
						<p>
							<label for="username" class="uname" data-icon="u"> <spring:message
									code="userName" /> &nbsp;&nbsp;&nbsp;&nbsp; ${errorMsg} </label> <input
								id="username" name="username" required="required" type="text"
								placeholder="myusername or mymail@mail.com" />
						</p>
						<p>
							<label for="password" class="youpasswd" data-icon="p"> <spring:message
									code="password" /> </label> <input id="password" name="password"
								required="required" type="password" placeholder="eg. X8df!90EO" />
						</p>
						<p class="keeplogin">
							<input type="checkbox" name="loginkeeping" id="loginkeeping"
								value="loginkeeping" /> <label for="loginkeeping"><spring:message
									code="keeplogin" />
							</label>
						</p>
						<p class="login button">
							<input type="submit" value="<spring:message code="login" />" />
						</p>
						<p class="change_link">
							<spring:message code="unmember" />
							<a href="#toregister" class="to_register"><spring:message
									code="joinUs" /> </a>
						</p>
					</form>
				</div>

				<div id="register" class="animate form">
					<form action="<%=request.getContextPath()%>/login/register.do"
						autocomplete="on" method="post">
						<h1>Sign up</h1>
						<p>
							<label for="usernamesignup" class="uname" data-icon="u"><spring:message
									code="userName" /> </label> <input id="username" name="username"
								required="required" type="text" placeholder="mysuperusername690" />
						</p>
						<p>
							<label for="emailsignup" class="youmail" data-icon="e"><spring:message
									code="mail" /> </label> <input id="useremail" name="useremail"
								required="required" type="email"
								placeholder="mysupermail@mail.com" />
						</p>
						<p>
							<label for="passwordsignup" class="youpasswd" data-icon="p"><spring:message
									code="password" /> </label> <input id="password" name="password"
								required="required" type="password" placeholder="eg. X8df!90EO" />
						</p>
						<p>
							<label for="passwordsignup_confirm" class="youpasswd"
								data-icon="p"><spring:message code="comfirmpass" /> </label> <input
								id="passwordsignup_confirm" name="passwordsignup_confirm"
								required="required" type="password" placeholder="eg. X8df!90EO" />
						</p>
						<p class="signin button">
							<input type="submit" value="<spring:message code="register" />" />
						</p>
						<p class="change_link">
							<spring:message code="havemember" />
							<a href="#tologin" class="to_register"><spring:message
									code="gologin" /> </a>
						</p>
					</form>
				</div>

			</div>
		</div>
		</section>
	</div>
</body>
</html>