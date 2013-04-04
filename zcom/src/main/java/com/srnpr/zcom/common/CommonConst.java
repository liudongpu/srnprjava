package com.srnpr.zcom.common;

import com.srnpr.zcom.enumer.ERunType;

public class CommonConst {

	
	
	
	public static String GetConfigPath()
	{
		return ConstStatic.CONST_CONFIG_PATH;
	}
	
	
	
	public static ERunType GetRunType()
	{
		return ConstStatic.CONST_SERVER_RUNTYPE;
	}
	
	public  void SetRunType(ERunType eRunType)
	{
		ConstStatic.CONST_SERVER_RUNTYPE=eRunType;
	}
	
	
	
	public static Boolean GetWebServerFlag()
	{
		return ConstStatic.CONST_WEB_SERVER_FLAG;
	}
	
	public void SetWebServerFlag(Boolean bFlag)
	{
		ConstStatic.CONST_WEB_SERVER_FLAG=bFlag;
	}
	
	
	public static String GetWebServerPath()
	{
		return ConstStatic.CONST_WEB_SERVER_PATH;
	}
	
	public void SetWebServerPath(String sString)
	{
		ConstStatic.CONST_WEB_SERVER_PATH=sString;
	}
	
	
	
	
}
