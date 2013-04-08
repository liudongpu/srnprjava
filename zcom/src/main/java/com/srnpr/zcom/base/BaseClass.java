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

	public void BDebug(long lKey, String... oLogInfo) {

		BLog().debug(String.valueOf(lKey) + "  " + BMessage(lKey, oLogInfo));

	}

	public void BError(long lKey, String... oLogInfo) {

		BLog().debug(String.valueOf(lKey) + "  " + BMessage(lKey, oLogInfo));
	}

	public void BError(Exception e, long lKey, String... oLogInfo) {
		BError(lKey, oLogInfo);
	}

	public String BConfig(String sKey) {

		return ConfigCacheManager.Get(sKey);
	}

	public String BMessage(long lKey, String... sKeys) {
		String sReturn = null;
		if (lKey > 0) {
			sReturn = MessageCacheManager.Get(String.valueOf(lKey));
			if (sReturn != null) {
				for (int i = 0, j = sKeys.length; i < j; i++) {
					sReturn = sReturn.replace("{" + (i) + "}", sKeys[i]);
				}
			}
		}
		else
		{
			sReturn=StringUtils.join(sKeys,"  ");
		}
		return sReturn;

	}

}
