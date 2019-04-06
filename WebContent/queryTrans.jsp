<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>Insert title here</title>
</head>
<%@ page import="com.C2CTest.config.*"%>
<%@ page import="com.alipay.api.*"%>
<%@ page import="com.alipay.api.request.*"%>
<%@page import="com.alipay.api.response.AlipayFundTransOrderQueryResponse"%>
<%
AlipayClient alipayClient = new DefaultAlipayClient("https://openapi.alipay.com/gateway.do","app_id","your private_key","json","GBK","alipay_public_key","RSA2");
AlipayFundTransOrderQueryRequest req = new AlipayFundTransOrderQueryRequest();
req.setBizContent("{" +
"    \"out_biz_no\":\"3142321423432\"," +
"    \"order_id\":\"20160627110070001502260006780837\"" +
"  }");
AlipayFundTransOrderQueryResponse resp = alipayClient.execute(req);
if(resp.isSuccess()){
System.out.println("调用成功");
} else {
System.out.println("调用失败");
}

%>
<body>

</body>
</html>