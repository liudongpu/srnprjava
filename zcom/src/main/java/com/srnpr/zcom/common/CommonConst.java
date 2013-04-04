package com.srnpr.zcom.common;

import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.enumer.ERunType;

public class CommonConst {

	
	
	
	public static String Get(EComConst eConst)
	{
		return ConstStatic.CONST_COM_MAP.get(eConst).toString();
	}
	
	public  void Put(EComConst eConst,Object oValue)
	{
		ConstStatic.CONST_COM_MAP.put(eConst, oValue);
	}
	
	
	
	
	
	
	
	
	public static Boolean GetWebServerFlag()
	{
		return ConstStatic.CONST_WEB_SERVER_FLAG;
	}
	
	public void SetWebServerFlag(Boolean bFlag)
	{
		ConstStatic.CONST_WEB_SERVER_FLAG=bFlag;
	}
	
	
	
	
	
	
	
}
