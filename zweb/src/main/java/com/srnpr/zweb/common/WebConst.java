package com.srnpr.zweb.common;

import java.util.concurrent.ConcurrentHashMap;

public class WebConst {

	
	public void SetTempletePath(String sPath)
	{
		ConstStatic.CONST_WEB_TEMPLETE_PATH=sPath;
	}
	
	
	public static String GetTempletePath()
	{
		return ConstStatic.CONST_WEB_TEMPLETE_PATH;
	}
	
	
	
	
	public static ConcurrentHashMap<String, String> PageConfig() {
		return ConstStatic.CONST_PAGE_CONFIG;
	}
	
	
	
}
