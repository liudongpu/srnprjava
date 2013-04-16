package com.srnpr.zweb.page;

import java.util.Enumeration;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zweb.enumer.EWebSet;

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



	private ConcurrentHashMap<EWebSet, String> setMap=new ConcurrentHashMap<EWebSet, String>();

	public String GetSet(EWebSet eKey)
	{
		return setMap.get(eKey);
	}


	public String putSet(EWebSet eKey,String sValue)
	{
		return setMap.put(eKey,sValue);
	}
	
	
	
	public Map<String, String> ConvertWebSet()
	{
		Map<String, String> mReturnMap=new ConcurrentHashMap<String, String>();
		
		Enumeration<EWebSet> eKeyEnumeration=setMap.keys();
		while (eKeyEnumeration.hasMoreElements())
		{
			EWebSet eWebRequest = (EWebSet) eKeyEnumeration.nextElement();
			mReturnMap.put(eWebRequest.name(), setMap.get(eWebRequest));
		}
		
		
		
		
		return mReturnMap;
		
		
	}
	
	


}
