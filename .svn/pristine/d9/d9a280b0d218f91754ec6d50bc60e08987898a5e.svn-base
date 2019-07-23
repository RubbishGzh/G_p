<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!-- 头部 -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="utf-8" />
		<title>顶部</title>
		<link rel="stylesheet" href="css/base.css" type="text/css"></link>
		<link rel="stylesheet" href="css/top.css" type="text/css"></link>
	</head>

	<body>
		<header>
			<div class="header-box">
				<span class="fl"> <c:choose>
					<a href="login.jsp" target="_parent">登录</a>
				<%
				if(session.getAttribute("hy")==null){
					out.print("请登录");
				}
				%>
				${sessionScope.hy}
				${sessionScope.uname}

				<a href="tuichu_servlet">注销</a>
				
			</c:choose> </span> <span class="fr"> <a href="register.jsp" target="_parent">免费注册
			</a> <a href="car.jsp" id="gocar" target="_parent"> 
			<em style="margin-left: 10px;">购物车</em> <i
				class="iconfont" style="color: darkmagenta;">&#xe64c;</i> </a> </span>
			</div>
		</header>
		<div class="serach-box" >
			<div class="serach-box-left  fl">
			<a href="fenye_servlet">
				<img src="img/logo.png" /></a>
			</div>

			<div class="serach-box-right fr">

				<input type="text" maxlength="20" class="fl" /> <input type="button" value="搜索" class="fl" />
				<p>羊毛衫 羊毛衫 羊毛衫</p>
			</div>
		</div>
	</body>

</html>