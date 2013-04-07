package com.srnpr.zcom.base;

import com.srnpr.zcom.common.ComFunction;


 /**
 * @description 基本类  包含一些通用的方法逻辑
 * @version 1.0
 * @author srnpr
 * @ClassName: BaseClass
 * @update 2013-4-7 下午1:23:07
 */
	
public class BaseClass {

	public void BLog(Object... oLogInfo)
	{
		ComFunction.OutLog(oLogInfo);
	}
	
	public void BLogDebug(Object... oLogInfo)
	{
		ComFunction.OutLog(oLogInfo);
	}
	
	public String BConfig(String sKey)
	{
		return ComFunction.ConfigValue(sKey);
	}
	

	
	
	
	
}
