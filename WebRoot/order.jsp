<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8"/>
<title>订单</title>
<link rel="stylesheet" href="css/base.css" />
<style type="text/css">
.order {
	width: 1000px;
	margin: 0 auto;
}

.top-menu ul li {
	float: left;
	color: #FFFFFF;
	padding: 12px 30px;
	border: 1px solid white;
	background: darkmagenta;
}

.top-menu {
	width: 90%;
	margin-left: 160px;
	border-bottom: 1px solid darkmagenta;
}

.left-menu ul {
	border: 1px gainsboro solid;
	width: 150px;
}

.left-menu ul li {
	text-align: center;
	padding: 20px 30px;
}

.content {
	text-align: center;
	border-bottom: 1px gainsboro solid;
	width: 80%;
	min-height: 400px;
}

#tab .change{
	background: white;
	color: black;
	border: 1px solid gainsboro;
}
table {
	border: none;
	border-collapse: collapse;
	border-top: gainsboro solid 1px;
	border-bottom: gainsboro solid 1px;
	margin: 0 auto;
	text-align: center;
	width: 100%;
}
table td {
	padding: 6px 6px;
}
</style>
</head>
<body>
	<iframe src="top.jsp" style="width: 100%;border: none;" scrolling="no">
		</iframe>	<div class="order clearfix">
		<p>我的订单</p>
		<div class="top-menu clearfix" id="top">
			<ul class="clearfix" id="tab">
				<li>所有订单</li>
				<li>等待付款</li>
				<li>已付款</li>
				<li>交易完成</li>
			</ul>
		</div>
		<div class="left-menu fl">

			<ul class="clearfix">
				<li class="current"><a href="index.html">个人信息</a>
				</li>
				<li><a href="#">地址管理</a>
				</li>
				<li><a href="#">我的收藏</a>
				</li>
				<li><a href="#">我的红包</a>
				</li>
				<li><a href="#">我的现金券</a>
				</li>
				<li><a href="#">我的尺码</a>
				</li>
				<li><a href="#">我的心愿单</a>
				</li>
			</ul>
		</div>

		<div class="content fl">
			<div id="content-mailingaddress">
				<c:choose>
					<c:when test="${sessionScope.userSession eq null}">
				您还未登录，所以无法查看订单
				<a href="login.jsp">登录</a>
					</c:when>
					<c:otherwise>

						<table border="1">
							<tr>
								<th>订单号</th>
								<th>下单时间</th>
								<th>订单总价</th>

								<th>订单状态</th>
								<th>操作</th>
							</tr>
							<c:forEach var="order" items="${myOrders}">

							</c:forEach>
						</table>
					</c:otherwise>
				</c:choose>
				<h3>
					<a href="ShouyeServlet">继续购物</a>
				</h3>
			</div>
		</div>

	</div>
	<iframe src="footer.jsp" style="width: 100%;border: none;height: 280px;" scrolling="no">
	    </iframe>
</body>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript">

	var index = 0;
	getOrder(index);
	$('#tab li:first').addClass("change");
	$('#tab li').click(function() {
	
		index = $(this).index();
		$(this).addClass("change").siblings().removeClass("change");
		getOrder(index);
	}
	);
   function getOrder(index){
   $.ajax({
		type : "post",
		url : "ShowMyOrdersServlet",
		data : {
			state : index
		},
		dataType : "json",
		success : function(data) {
		    $('tr').remove();
			var msg = data.massege;
			var jsonObj = eval(msg);
			if(jsonObj!=null)
			for ( var i = 0; i < jsonObj.length; i++) {
				var order = jsonObj[i];
				var orderId = order.orderId;
				var state = 0;
				switch (jsonObj[i].state) {
				case 1:
               state="未发货";
					break;
               case 2:
               state="已发货";
					break;
					
				case 3:
               state="已完成";
					break;
				}
				$('table').append(
						'<tr><td>' + order.orderId + '</td><td>'
								   + order.createTime + '</td><td>'
								   + order.sumPrice
								   + '</td><td>'+state+'</td><td><a href="ShowOrderDetailServlet?oid='+orderId+'">查看详情</a></td>');

			}

		}
	});
   }
	
</script>
</html>
