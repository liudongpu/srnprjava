package com.srnpr.zweb.common;

import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zweb.enumer.EWebConst;

public class WebConst {

	
	
	
	
	public static String Get(EWebConst eConst)
	{
		return ConstStatic.CONST_WEB_CONST.get(eConst).toString();
	}
	
	public static void Put(EWebConst eConst,Object oValue)
	{
		ConstStatic.CONST_WEB_CONST.put(eConst, oValue);
	}
	
	
	

	
	
	
	public static ConcurrentHashMap<String, String> PageConfig() {
		return ConstStatic.CONST_PAGE_CONFIG;
	}
	
	
	
}
