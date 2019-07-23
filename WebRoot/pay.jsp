<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<title>购物车结算页</title>
<link rel="stylesheet" href="css/base.css" type="text/css"></link>
<link rel="stylesheet" href="css/pay.css" type="text/css"></link>
</head>
<body>
		<div  class="add">
		<p>请填写地址信息</p>
			<img src="img/icon-delete.gif"  id="close"/>
       	    <div class="info">
       	    <form action="pay_add_servlet"  method="post">
       		<ul>
       			<li>
       				<label>收货姓名：</label>
					<i style="color: red;">*</i>
					<input type="text" style="height: 28px;"  id="phone"  onblur="register();"  name="addressee"/>
                    <i style="color: red;display: none;"   id="error_alert">测试错误信息!</i>
       			</li>
       			<li>
       				<label>收货城市：</label>
					<i style="color: red;">*</i>
					<input style="height: 28px;"  id="email" onblur="register();" name="cityAddress"/>
                     <i style="color: red;display: none;"   id="email_alert">测试错误信息!</i>
       			</li>
       			<li>
       			<label>收货地址：</label>
					<i style="color: red;">*</i>
					<input style="height: 28px;" type="text" id="pwd" onblur="register();" name="streetAddress"/>
                     <i style="color: red;display: none;"   id="pwd_alert">测试错误信息!</i>
       			</li>
       			<li>
       				<label>联系电话：</label>
					<i style="color: red;">*</i>
					<input style="height: 28px;" type="number"  id="rePwd" onblur="register();" name="phone"/>
                    <i style="color: red;display: none;"   id="rePwd_alert">测试错误信息!</i>
       			</li>
       		</ul>
       		<div class="addsub">
       		<input  type="submit" value="提交"/>
       		</div>
       		</form>
			
			</div>
       </div>
			<iframe src="top.jsp" style="width: 100%;border: none;" scrolling="no">
		</iframe>
		<div class="order">
			<form action="orderSuccess.jsp"  method="post"  onsubmit="return checkOrdersub()">
			<div>
			<div  class="address">
				<br />
				<p>使用地址</p>
				<span  class="addspan">
				<input type="radio" class="fl" name="maid" value="${mail.maid}" />
				<i>河南省郑州市管城区***17737390363</i>
				</span>
				<a href="javascript:void(0)"  onclick="go()">
					新增地址
				</a>
			</div>
			
			
			<h1 >请填写并确认信息</h1>
			<span>收货方式</span>
			<select name="postType">
								<option value="快递">快递</option>
								<option value="平邮">平邮</option>
								<option value="EMS">EMS</option>
								<option value="自取">自取</option>
						</select>
						<span>支付方式</span>
						<select name="payType">
								<option value="货到付款">货到付款</option>
								<option value="网银">网银</option>
								<option value="支付宝">支付宝</option>
								<option value="转账">转账</option>
						</select>
						<p>备注</p>
						<textarea name="remark" cols="120" rows="2"></textarea>
						<br />
						<span>结算金额</span>
						<input  type="text" readonly="readonly" name="totalPrice"
							value="${totalPrice}">
						
							<input type="submit"  value="提交订单" />
		             </div>
		            
			</form>
			 </div>
				 <iframe src="footer.jsp" style="width: 100%;border: none;height: 280px;" scrolling="no">
	    </iframe>
 
	</body>
	<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
	<script type="text/javascript">
		function go(){
			$('.add').css('display','block');
		}
		$('#close').click(
			function(){
				$('.add').css('display','none');
			}
		);
		function checkOrdersub(){
		//没有选收获地址要提示
		if($('[type=radio]:checked').length==0){
		alert("请选择收货地址");
		return false;
		}
		$('[type=radio]').each(
		function(){
		if(!$(this).attr('checked')){
		$(this).removeAttr('name');
		}
		return true;
		}
		);
		}
		
		$('.addspan').click(function(){
		$(this).find('input').attr('checked','true');
		});
		
	</script>
</html>
