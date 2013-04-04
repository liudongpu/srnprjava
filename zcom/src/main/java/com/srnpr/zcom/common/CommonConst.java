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
	
	public static void SetRunType(ERunType eRunType)
	{
		ConstStatic.CONST_SERVER_RUNTYPE=eRunType;
	}
	
	
	
}
