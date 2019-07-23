<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE">
<html>
  <head>
    <title>商品详情</title>
	 <link rel="stylesheet" href="css/base.css" type="text/css"></link></head>
  <link rel="stylesheet" href="css/productDetial.css" type="text/css"></link>
  <body>
  	<div class="detail clearfix">
		<img src="img/logo.png" />
		<div class="product">
			<div class="left fl">
				<img src="${productDetail.productPic}"  style="width:230px;height=230px"/>
			</div>
			<div class="right fl">
			<p>
				商品详情：${productDetail.productOutline}
			</p>
			<p>
				价格：${productDetail.productPrice}
			</p>
			<p>
				库存：${productDetail.productstorage}
			</p>
				<a href="productDetail_servlet?pid=${productDetail.productId}">
				<input type="button"  value="加入购物车"/>
				</a>
			
			</div>
		
		</div>
		</div>
		
<jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
