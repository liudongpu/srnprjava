package com.srnpr.zweb.page;

import java.util.Enumeration;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zweb.enumer.EWebSet;

public class PageRequest {


	
	private int didPageType=0;
	
	
	
	
	 /**
	 * @fields reqMap 输入参数
	 */
		
	private MHashMap reqMap=new MHashMap();
	
	private MHashMap paramsMap=new MHashMap();
	
	

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


	public Boolean isContainsRequestParam(String sName)
	{
		return reqMap!=null&&reqMap.containsKey(sName);
	}


	public String upRequestParam(String sName)
	{
		return (String)reqMap.get(sName);

	}



	
	 /**
	 * @fields setMap  设置参数  一般指Url设置
	 */
		
	private ConcurrentHashMap<EWebSet, String> setMap=new ConcurrentHashMap<EWebSet, String>();

	public String upSet(EWebSet eKey)
	{
		return setMap.get(eKey);
	}


	public String inSet(EWebSet eKey,String sValue)
	{
		return setMap.put(eKey,sValue);
	}
	
	
	
	
	 /**
	 * @return
	 * @description  转换配置为Map结构
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-17 下午10:41:09
	 */
		
	public Map<String, String> convertWebSet()
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
	
	
	public void refreshParamsHashMap()
	{
		paramsMap= HashHelper.atConvertStringToHash(upSet(EWebSet.Url_Param));
		
	}


	public int getDidPageType() {
		return didPageType;
	}


	public void setDidPageType(int didPageType) {
		this.didPageType = didPageType;
	}


	public MHashMap getParamsMap() {
		return paramsMap;
	}


	public void setParamsMap(MHashMap paramsMap) {
		this.paramsMap = paramsMap;
	}
	
	


}
