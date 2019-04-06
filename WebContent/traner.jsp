<%@page import="com.alipay.api.response.AlipayFundTransToaccountTransferResponse"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<%@ page import="com.C2CTest.config.*"%>
<%@ page import="com.alipay.api.*"%>
<%@ page import="com.alipay.api.request.*"%>
<%
AlipayClient alipayClient = new DefaultAlipayClient("https://openapi.alipay.com/gateway.do","app_id","your private_key","json","GBK","alipay_public_key","RSA2");
AlipayFundTransToaccountTransferRequest req = new AlipayFundTransToaccountTransferRequest();
req.setBizContent("{" +
"    \"out_biz_no\":\"3142321423432\"," +
"    \"payee_type\":\"ALIPAY_LOGONID\"," +
"    \"payee_account\":\"abc@sina.com\"," +
"    \"amount\":\"12.23\"," +
"    \"payer_show_name\":\"上海交通卡退款\"," +
"    \"payee_real_name\":\"张三\"," +
"    \"remark\":\"转账备注\"," +
"  }");
AlipayFundTransToaccountTransferResponse resp = alipayClient.execute(req);
if(resp.isSuccess()){
System.out.println("调用成功");
} else {
System.out.println("调用失败");
}


%>

<body>

</body>
</html>