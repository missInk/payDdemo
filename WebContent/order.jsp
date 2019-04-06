<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>订单界面</title>
</head>
<body>

<form action="alipay.trade.page.pay.jsp" method="post" target="_blank">
	商品名称：<input id="WIDsubject" value="123" name="WIDsubject"><br>
	商户订单号 ：<input type="hidden" id="WIDout_trade_no" value="201946155410253" name="WIDout_trade_no"><br>
	付款金额 ：<input id="WIDtotal_amount" value="1" name="WIDtotal_amount"><br>
	商品描述：<input id="WIDbody" name="WIDbody" value="哈哈哈哈"><br>
	<input type="submit">
</form>

</body>
</html>