<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>下单成功页面</title>
    <meta http-equiv="refresh" content="3;URL=order.jsp">

  </head>
  
  <body  style="text-align:center;margin-top:20px">
     下单成功，<i id="time">3</i>秒后自动跳转到订单页面<a href="order.jsp">我的订单</a> <br>
  </body>
  <script type="text/javascript">
            var i = 3;
            var tim = document.getElementById("time");
            var timer = setInterval(function () {
                if (i == -1) {
                    clearInterval(timer);
                } else {
                    tim.innerHTML = i;
                    --i;
                }
            }, 1000);
            
            

  </script>
</html>
