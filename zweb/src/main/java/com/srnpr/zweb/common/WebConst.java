package com.srnpr.zweb.common;

import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zweb.enumer.EWebConst;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.model.MWebConfig;
import com.srnpr.zweb.model.MWebPage;

public class WebConst {

	
	
	
	
	public static String Get(EWebConst eConst)
	{
		return ConstStatic.CONST_WEB_CONST.get(eConst).toString();
	}
	
	public static void Put(EWebConst eConst,Object oValue)
	{
		ConstStatic.CONST_WEB_CONST.put(eConst, oValue);
	}
	

	
	public static ConcurrentHashMap<Object, Object> PageConfig() {
		return ConstStatic.CONST_PAGE_CONFIG;
	}
	
	
	public static MWebConfig GetWebConfig(String sKey)
	{
		return ConstStatic.CONST_WEB_CONFIG.get(sKey);
	}
	
	public static void PutWebCnfig(String sKey,MWebConfig mConfig)
	{
		ConstStatic.CONST_WEB_CONFIG.put(sKey, mConfig);
	}
	
	
	public static IWebProcess GetWebProcess(String sKey)
	{
		return ConstStatic.CONST_WEB_PROCESS.get(sKey);
	}
	
	public static void PutWebProcess(String sKey,IWebProcess iProcess)
	{
		ConstStatic.CONST_WEB_PROCESS.put(sKey, iProcess);
	}
	
	
	
}
