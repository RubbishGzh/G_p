<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!-- 登录页 -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="UTF-8">
		<title>用户登录</title>
		<link rel="stylesheet" href="css/base.css" type="text/css"></link>
		<link rel="stylesheet" href="css/login.css" type="text/css"></link>
	</head>

	<body>
		<div class="login">
			<a href="fenye_servlet">
			<img src="img/logo.png" /></a>
			<form action="login_servlet" method="post">
				<div class="usercode_div">
					<label>账号</label><i style="color: red;">*</i> <input type="text" placeholder="用户名" name="username" /> <i>没有账号？</i><a style="color: darkmagenta;" href="register.jsp">免费注册</a>
				</div>

				<div class="userpwd_div">
					<label>密码</label><i style="color: red;">*</i> <input type="password" name="pwd" placeholder="请输入密码" /> <i>密码忘了？</i><a style="color: darkmagenta;" href="#">找回密码</a>
				</div>
				
				<%
				String error=(String)session.getAttribute("error");
				if(error == "a"){%>
					<div style="color:red;margin-left:30px" id="error_msg">
					登陆错误！</div><%
				}
				%>
				
				<div class="user_login_button">
					<input type="submit" value="登录" onclick="return checkUser();" id="my_denglu" />
				</div>
			</form>
		</div>
		<footer>
			<div class="links">
				<a rel="nofollow" target="_blank" href="#"> 关于我们 </a> | <a rel="nofollow" target="_blank" href="#"> 联系我们 </a> | <a rel="nofollow" target="_blank" href="#"> 人才招聘 </a> | <a rel="nofollow" target="_blank" href="#"> 商家入驻 </a> | <a rel="nofollow" target="_blank"
					href="#"> 广告服务 </a> | <a rel="nofollow" target="_blank" href="#"> 手机前程 </a> | <a target="_blank" href="#"> 友情链接 </a> | <a target="_blank" href="#">
				销售联盟 </a> | <a href="#" target="_blank"> 前程社区 </a> | <a href="#" target="_blank"> 京东公益 </a> | <a target="_blank" href="#" clstag="pageclick|keycount|20150112ABD|9">English Site</a>
			</div>
			<div>
				Copyright&nbsp;©&nbsp;2004-2018&nbsp;&nbsp;打造前程.com&nbsp;版权所有</div>
		</footer>
	</body>
	<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	<script type="text/javascript"></script>

</html>
