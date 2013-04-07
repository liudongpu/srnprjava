package com.srnpr.zcom.base;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.srnpr.zcom.common.ComFunction;


 /**
 * @description 基本类  包含一些通用的方法逻辑
 * @version 1.0
 * @author srnpr
 * @ClassName: BaseClass
 * @update 2013-4-7 下午1:23:07
 */
	
public class BaseClass {
	private  final Logger logger = LoggerFactory.getLogger(this.getClass().getName());
	
	public Logger BLog()
	{
		return logger;
	}
	
	public void BDebug(Object... oLogInfo)
	{
		BLog().debug(StringUtils.join(oLogInfo));
	}
	
	public String BConfig(String sKey)
	{
		return ComFunction.ConfigValue(sKey);
	}
	

	
	
	
	
}
