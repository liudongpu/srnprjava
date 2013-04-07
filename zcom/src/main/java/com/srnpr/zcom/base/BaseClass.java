package com.srnpr.zcom.base;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.manager.MessageCacheManager;


 /**
 * @description 基本类  包含一些通用的方法逻辑
 * @version 1.0
 * @author srnpr
 * @ClassName: BaseClass
 * @update 2013-4-7 下午1:23:07
 */
	
public class BaseClass {
	private   Logger logger =null;
	
	public Logger BLog()
	{
		if(logger==null)
		{
			logger=LoggerFactory.getLogger(this.getClass().getName());
		}
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
	
	
	public String BMessage(String sKeys,String... sReplace) {
		
		String sReturn=MessageCacheManager.Get(sKeys);
		for (int i = 0,j=sReplace.length; i < j; i++) {
			sReturn=sReturn.replaceAll("{"+i+"}", sReplace[i]);
			
		}
		return sReturn;
		
	}

	
	
	
	
}
