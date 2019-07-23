<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE>
<html>
<head>
<base href="<%=basePath%>">
<title>商品已成功加入购物车</title>
<link rel="stylesheet" href="css/base.css" type="text/css"></link>
<style type="text/css">
.container {
	width: 1000px;
	margin: 0 auto;
}
footer {
	margin-top: 20px;
	padding: 20px 0;
	background: beige;
	text-align: center;
	width: 100%;
}
h3 {
	border-top: solid 2px darkmagenta;
	padding-top: 20px;
}
.container a{
margin-left: 10px;
display:inline-block;
width:100px;
height:40px;
color:white;
line-height: 40px;
text-align: center;
background: darkmagenta;
}
</style>
</head>
<body>
	<div class="container">
		<br/> <img src="img/logo.png" />
		<h3>您刚才选择的商品已成功添加至购物车！</h3>
		<img src="${productDetail.productPic}" style="vertical-align: auto;width:230px;height:230px" />
		<div>${sessionScope.productDetail.productName}</div>
		<br /> <br /> <a href="car.jsp">查看购物车</a> <a href="fenye_servlet">继续购物</a>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
