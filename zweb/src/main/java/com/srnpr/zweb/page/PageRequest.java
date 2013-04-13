package com.srnpr.zweb.page;

import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.http.HttpServletRequest;

import com.srnpr.zweb.enumer.EWebRequest;

public class PageRequest {

	
	private HttpServletRequest request;
	
	public PageRequest(HttpServletRequest hRequest)
	{
		request=hRequest;
		this.Put(EWebRequest.Request_Method, request.getMethod());
	}
	

	
	public String GetParam(String sName)
	{
		return request.getParameter(sName);
		
	}
	
	
	private ConcurrentHashMap<EWebRequest, String> cMap=new ConcurrentHashMap<EWebRequest, String>();
	
	public String Get(EWebRequest eKey)
	{
		return cMap.get(eKey);
	}
	
	
	public String Put(EWebRequest eKey,String sValue)
	{
		return cMap.put(eKey,sValue);
	}
	
	
}
