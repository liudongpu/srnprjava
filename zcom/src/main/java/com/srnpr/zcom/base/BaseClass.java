package com.srnpr.zcom.base;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zcom.manager.MessageCacheManager;

/**
 * @description 基本类 包含一些通用的方法逻辑
 * @version 1.0
 * @author srnpr
 * @ClassName: BaseClass
 * @update 2013-4-7 下午1:23:07
 */

public class BaseClass {
	private Logger logger = null;

	public Logger BLog() {
		if (logger == null) {
			logger = LoggerFactory.getLogger(this.getClass().getName());
		}
		return logger;
	}

	public void BDebug(String... oLogInfo) {
		if (oLogInfo[0].length() == 11 && oLogInfo[0].startsWith("13")) {
			BLog().debug(oLogInfo[0]+"  " + BMessage(oLogInfo));
		} else {

			BLog().debug(StringUtils.join(oLogInfo));
		}
	}
	
	
	
	public void BError(String... oLogInfo) {
		if (oLogInfo[0].length() == 11 && oLogInfo[0].startsWith("13")) {
			BLog().error(oLogInfo[0]+"  " + BMessage(oLogInfo));
		} else {

			BLog().error(StringUtils.join(oLogInfo));
		}
	}
	
	
	public void BError(Exception e,String... oLogInfo) {
		BError(oLogInfo);
	}
	

	public String BConfig(String sKey) {
		
		return ConfigCacheManager.Get(sKey);
	}

	public String BMessage(String... sKeys) {

		String sReturn = MessageCacheManager.Get(sKeys[0]);
		if (sReturn != null) {
			for (int i = 1, j = sKeys.length; i < j; i++) {
				sReturn = sReturn.replace("{" + (i - 1) + "}", sKeys[i]);

			}
		}
		return sReturn;

	}

}
