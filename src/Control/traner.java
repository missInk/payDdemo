package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.C2CTest.config.AlipayConfig;
import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayFundTransToaccountTransferRequest;
import com.alipay.api.response.AlipayFundTransToaccountTransferResponse;

@WebServlet("/traner")
public class traner extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
		AlipayFundTransToaccountTransferRequest req = new AlipayFundTransToaccountTransferRequest();
		req.setBizContent("{" +
		"    \"out_biz_no\":\"3142321423439\"," +
		"    \"payee_type\":\"ALIPAY_LOGONID\"," +
		"    \"payee_account\":\"xpxngn3937@sandbox.com\"," +
		"    \"amount\":\"0.1\"," +
		"    \"payer_show_name\":\"上海交通卡退款\"," +
		"    \"remark\":\"转账备注\"," +
		"  }");
		AlipayFundTransToaccountTransferResponse resp = null;
		try {
			resp = alipayClient.execute(req);
		} catch (AlipayApiException e) {
			e.printStackTrace();
		}
		if(resp.isSuccess()){
		System.out.println("调用成功");
		} else {
			System.out.println(resp.getCode() + ":" + resp.getMsg());
		System.out.println("调用失败");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
