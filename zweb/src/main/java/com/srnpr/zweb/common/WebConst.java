package com.srnpr.zweb.common;

public class WebConst {

	
	public void SetTempletePath(String sPath)
	{
		ConstStatic.CONST_WEB_TEMPLETE_PATH=sPath;
	}
	
	
	public static String GetTempletePath()
	{
		return ConstStatic.CONST_WEB_TEMPLETE_PATH;
	}
	
}
