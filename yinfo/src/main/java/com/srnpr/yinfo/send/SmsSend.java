package com.srnpr.yinfo.send;

import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;

import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.HttpClientBuilder;
import org.springframework.http.HttpMethod;

import com.srnpr.zcom.base.BaseClass;

public class SmsSend extends BaseClass {

	public String inSend(String sMobilePhone,String sContent) {

		HttpClient httpclient = HttpClientBuilder.create().build();
		
		
		StringBuffer sBuffer=new StringBuffer();
		sBuffer.append("http://ws.montnets.com:9002/MWGate/wmgw.asmx/MongateCsSpSendSmsNew?");
		
		sBuffer.append("userId=J21386&password=597912&");
		sBuffer.append("pszMobis="+sMobilePhone+"&pszMsg="+sContent);
		sBuffer.append("&iMobiCount=0&pszSubPort=*");
		

		HttpGet httpgets = new HttpGet(sBuffer.toString());

		ResponseHandler<String> responseHandler = new BasicResponseHandler();
		String sResponse = "";
		try {
			sResponse = httpclient.execute(httpgets, responseHandler);
		} catch (Exception e) {

			BError(e, 965901014);
		} finally {
			httpgets.releaseConnection();
		}

		return "";
	}

}
