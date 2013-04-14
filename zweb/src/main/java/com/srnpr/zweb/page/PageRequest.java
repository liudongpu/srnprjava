package com.srnpr.zweb.page;

import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zweb.enumer.EWebRequest;

public class PageRequest {


	private MHashMap reqMap=new MHashMap();

	public MHashMap getReqMap() {
		return reqMap;
	}


	public void setReqMap(MHashMap reqMap) {
		this.reqMap = reqMap;
	}


	public PageRequest(MHashMap hRequest)
	{
		reqMap=hRequest;

	}


	public PageRequest()
	{

	}


	public Boolean ContainsParam(String sName)
	{
		return reqMap!=null&&reqMap.containsKey(sName);
	}


	public String GetParam(String sName)
	{
		return (String)reqMap.get(sName);

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
