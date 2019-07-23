<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

	<head>
		<meta charset="utf-8" />
		<title>购物车</title>
		<link rel="stylesheet" href="css/base.css" type="text/css"></link>
		<link rel="stylesheet" href="css/car.css" type="text/css"></link>
	</head>

	<body>
	
		<iframe src="top.jsp" style="width: 100%;border: none;" scrolling="no">
		</iframe>
		<div class="container">
					<!--<div style="text-align:center;border-top:2px solid darkmagenta;padding-top:50px">
						<a href="ShouyeServlet"> 购物车中没有数据，赶快去购物吧</a>
					</div>-->
					<form action="pay.jsp" method="post" onsubmit="return subCheck();">
						<table id="car">
							<tr style="height: 36px;">
								<th>选择</th>
								<th>商品</th>
								<th>单价（元）</th>
								<th>数量</th>
								<th>金额（元）</th>
								<th>删除</th>
							</tr>
								<tr>
									<td><input type="checkbox" name="checkone" onclick="checkOne(this)" value="${c.product.id}" />
									</td>
									<td>
										<div class="td2">
											<img src="${productDetail.productPic}" style="float: left;" />
											<div class="product">
												${productDetail.productOutline}
												
												<br />
											</div>
										</div>
									</td>
									<td>${productDetail.productPrice}</td>
									<td class="td4"><input type="button" value="-" class="" onclick="changePruductNum(this)" />
										<input type="text" value="1" class="procount" />
										<input type="button" value="+" class="" onclick="changePruductNum(this)" /></td>
									<td>${productDetail.productPrice}</td>
									<td><span onClick="del(this)" class="">删除</span></td>
								</tr>
							<tr style="padding: 20px;">
								<td><input type="checkbox" id="all" onclick="selectAll(this)" />全选</td>

								<td colspan="4">
									<input type="hidden" value="0" name="totalPrice">
									<b style="color: red;" id="money">共0件商品，总价：0元</b>
								</td>
								<td><input type="submit" value="立即结算" id="count" />
								</td>
							</tr>
						</table>
					</form>
		</div>
		<iframe src="footer.jsp" style="width: 100%;border: none;height: 280px;" scrolling="no">
	    </iframe>
	</body>
	<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	<script type="text/javascript">
		//点击加号减号
		function changePruductNum(obj) {
			var opt = $(obj).val(); //得到操作符
			var num = 0;
			var pid = $(obj).attr('class');
			if ("+" == opt) {
				num = $(obj).prev().val();
				num = parseInt(num);
				num++;
				$(obj).prev().val(num);
			} else {
				num = $(obj).next().val();
				if (num <= 1) {
					del(obj);
					return;
				}
				num = parseInt(num);
				num--;
				$(obj).next().val(num);
			}
			var price = parseFloat($(obj).parent().prev().text()).toFixed(2);
			$(obj).parent().next().text(num * price);
			//异步请求
			$.post("ChangeNumServlet?pid=" + pid + "&n=" + num, function(data) {
				//计算总价格
				if ("success" == data) {
					totalPrice();
				} else {
					alert("更新失败");
				}
			});
		}
		//全选
		function selectAll(obj) {
			var isCheck = $(obj).prop('checked');
			$('[name=checkone]').prop('checked', isCheck);
			totalPrice();
		}
		//点击每一个checkbox
		function checkOne(obj) {
			var count = 0;
			$('[name=checkone]').each(function() {
				if ($(this).prop('checked') == true) {
					count++;
				}
			});
			if (count == $('[name=checkone]').length) {
				$('#all').prop('checked', true);
			} else {
				$('#all').prop('checked', false);
			}
			totalPrice();
		}
		//计算总价格
		function totalPrice() {
			var totalPrice = 0;
			var num = 0;
			$('[name=checkone]').each(
				function() {
					if ($(this).prop('checked')) {
						totalPrice = totalPrice + parseFloat($(this).parent().parent().children(':eq(4)').html());
						num = num + parseInt($(this).parent().parent().find('.procount').val());
					}
				}
			);
			$('[name=totalPrice]').val(totalPrice);
			$('#money').html("共计" + num + "件商品，总价格" + totalPrice + "元");
		}
		//删除
		function del(obj) {
			var pid = $(obj).attr('class');
			if ($('input[name=checkone]:checked').length == 0) {
				alert("请选择要删除的商品");
				return;
			}
			if (confirm("确定要删除吗？")) {
				//调接口
				$.post("DelCartByIdServlet?pid=" + pid, function(data) {
					$(obj).parent().parent().remove();
					totalPrice();
					if ($('tr').length == 2) {
						$('table').html("");
						$('table').append($('<div style="text-align:center;border-top:2px solid darkmagenta;width:100%;padding-top:50px"><a href="ShouyeServlet"> 购物车中没有数据，赶快去购物吧</a></div>'));
					}
				});
			}
		}

		function subCheck() {
			//没有选中不提交
			if ($('input[name=checkone]:checked').length == 0) {
				alert("请选中要结算的商品");
				return false;
			}
			//遍利checkbox
			$('$[name=checkone]').each(function() {
				//如果没有选中，不提交   此处方案为删除name属性
				if (!$(this).attr('checked')) {
					$(this).removeAttr('name');
				}
			});
			return true;
		}
		
	</script>


</html>
