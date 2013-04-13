package com.srnpr.zcom.base;

import org.apache.commons.lang.ClassUtils;
import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.manager.ConfigCacheManager;

public class BaseInit extends BaseClass {

	
	/**
	 * @param sConfigName
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 * @description 加载各种类
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-8 上午12:01:19
	 */

	public void InitClass(String sConfigName) throws ClassNotFoundException,
			InstantiationException, IllegalAccessException {

		ConfigCacheManager configCacheManager = new ConfigCacheManager();

		for (String sClassName : configCacheManager.GetStrings(sConfigName)) {

			if (!StringUtils.isEmpty(sClassName)) {
				try {

					Class<?> cClass = ClassUtils.getClass(sClassName);
					if (cClass != null && cClass.getDeclaredMethods() != null) {
						IBaseInit init = (IBaseInit) cClass.newInstance();
						init.Init();
					}
				} catch (Exception e) {

					BError(e, 967901005, sClassName);

				}
			}

		}
	}
	
	
}
