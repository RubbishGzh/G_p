<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 首页 -->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>前程购物</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/base.css" type="text/css"></link>
<link rel="stylesheet" href="css/shop.css" type="text/css"></link>
</head>
<body>
<jsp:include page="top.jsp"/>
<!--导航条-->
<nav>
	<ul class="nav-box">
		<li>首页</li>
		<li>品牌</li>
		<li>实体店</li>
		<li>最新上市</li>
		<li>热卖</li>
		<li>特价</li>
	</ul>
</nav>
<!--轮播图-->
<div class="banner clearfix">
	<ul class="clearfix">
		<li><img src="img/banner/banner1.jpg">
		</li>
		<li><img src="img/banner/banner2.jpg">
		</li>
		<li><img src="img/banner/banner3.jpg">
		</li>
	</ul>
	<span class="iconfont left">&#xe603;</span> 
	<span class="iconfont right">&#xe61f;</span>

</div>
<!--楼梯-->
<div class="floor">
	<div class="floor-title clearfix">
		<span class="fl">商品</span> <span class="fr">T恤 裙子 裤子</span>
	</div>
	
	<ul class="clearfix">
		<c:forEach items="${requestScope.products}" var="i">
             <a href="product_servlet?productId=${i.productId}">
				<li><img src="${i.productPic}"/>
				<p>${i.productOutline}</p> 
				<em>${i.productPrice}</em>
				</li>
			 </a> 
		
		</c:forEach>
	</ul>
	</div>
<div class="pg" style="text-align:center">
        <a href="fenye_servlet?pg=${page.startPage}">首页     </a>
		<a href="fenye_servlet?pg=${page.prevPageNum}">上一页     </a>
		<a href="fenye_servlet?pg=${page.nextPageNum}">下一页     </a>
		<a href="fenye_servlet?pg=${page.endPage}">尾页     </a>
	             第${page.pageNum}页/共${page.totalPage}页
</div>
<jsp:include page="footer.jsp"></jsp:include>
		<!--回到顶部-->
        <div class="gotop  iconfont" >&#xe631;
        </div>
        <script type="text/javascript" src="js/jquery-1.9.1.js"></script>
		<script type="text/javascript" src="js/shop.js"></script>
</body>

</html>
