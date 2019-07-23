<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!-- 注册页 -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="utf-8" />
		<title>注册</title>
		<style type="text/css">
			.row-bottom {
				border-bottom: 2px solid #e93854;
				padding-bottom: 20px;
				padding-top: 20px;
				margin-bottom: 20px;
			}
		</style>
		<link rel="stylesheet" href="css/base.css" type="text/css"></link>
		<link rel="stylesheet" href="css/register.css" type="text/css"></link>
	</head>

	<body>
		<div class="register">
		<a href="fenye_servlet">
			<img src="img/logo.png" /></a>
			<form action="register_servlet" method="post">
				<div class="userphone_div">
					<label>用户名称</label><i style="color: red;">*</i>
					<input type="text" style="height: 28px;" id="phone" onblur="register();" name="username" /><i style="color: red;display: none;" id="error_alert">测试错误信息!</i><i>仅限中国大陆移动，联通，电信手机号码</i>
				</div>

				<div class="useremail_div">
					<label>电子邮箱</label><i style="color: red;">*</i>
					<input style="height: 28px;" id="email" onblur="register();" name="email" /><i style="color: red;display: none;" id="email_alert">测试错误信息!</i><i>请输入您常用的电子邮箱地址</i>
				</div>

				<div class="userepwd_div">
					<label>设置密码</label><i style="color: red;">*</i>
					<input style="height: 28px;" type="password" id="pwd" name="pwd" onblur="register();" /><i style="color: red;display: none;" id="pwd_alert">测试错误信息!</i><i>仅限6-16个字母,数字，特殊符号</i>
				</div>

				<div class="userepwdsecond_div">
					<label>重复密码</label><i style="color: red;">*</i>
					<input style="height: 28px;" type="password" id="rePwd" onblur="register();" /><i style="color: red;display: none;" id="rePwd_alert">测试错误信息!</i><i>请再次输入您设置的密码</i>
				</div>

							<%
							String error=(String)request.getAttribute("error");
							if(error!=null){
								out.print("注册失败！");
							}
							%>
				<div class="clause_div">
					<input type="checkbox" />我已阅读并同意<i style="color: green;">《网站服务条款》</i>。
				</div>
				<div class="user_register_button">
					<input type="submit" value="注册" onclick="register();" />
				</div>
			</form>
		</div>

		<footer>
			<div class="links">
				<a rel="nofollow" target="_blank" href="#">
                关于我们
            </a> |
				<a rel="nofollow" target="_blank" href="#">
                联系我们
            </a> |
				<a rel="nofollow" target="_blank" href="#">
                人才招聘
            </a> |
				<a rel="nofollow" target="_blank" href="#">
                商家入驻
            </a> |
				<a rel="nofollow" target="_blank" href="#">
                广告服务
            </a> |
				<a rel="nofollow" target="_blank" href="#">
                手机前程
            </a> |
				<a target="_blank" href="#">
                友情链接
            </a> |
				<a target="_blank" href="#">
                销售联盟
            </a> |
				<a href="#" target="_blank">
                前程社区
            </a> |
				<a href="#" target="_blank">
                京东公益
            </a> |
				<a target="_blank" href="#" clstag="pageclick|keycount|20150112ABD|9">English Site</a>
			</div>
			<div>
				Copyright&nbsp;©&nbsp;2004-2018&nbsp;&nbsp;打造前程.com&nbsp;版权所有
			</div>
		</footer>
	</body>

</html>