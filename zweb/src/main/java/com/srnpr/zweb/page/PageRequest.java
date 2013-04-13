package com.srnpr.zweb.page;

import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.http.HttpServletRequest;

import com.srnpr.zweb.enumer.EWebRequest;

public class PageRequest {

	
	private ConcurrentHashMap<String, String> request;
	
	public PageRequest(ConcurrentHashMap<String, String> hRequest)
	{
		request=hRequest;
		
	}
	
	
	public PageRequest()
	{
		
	}
			

	
	public String GetParam(String sName)
	{
		return request.get(sName);
		
	}
	
	
	private ConcurrentHashMap<String, String> cHashMap=new ConcurrentHashMap<String, String>();
	
	
	
	
	
	
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
