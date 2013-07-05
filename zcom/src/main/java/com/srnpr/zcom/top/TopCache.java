package com.srnpr.zcom.top;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.config.Configuration;

public class TopCache {

	private static CacheManager cManager;

	public TopCache() {
		if (cManager == null) {

			Configuration configuration=new Configuration();
			cManager = CacheManager.create(configuration);

		}
		// CacheManager.getInstance().getCache("").get("").getObjectValue();
	}

	public Cache inCache(String sCacheName) {
		

		if (cManager.cacheExists(sCacheName)) {
			return upCache(sCacheName);
		} else {
			Cache memoryOnlyCache = new Cache(sCacheName, 5000, false, true, 0, 0);
			cManager.addCache(memoryOnlyCache);
			
			return memoryOnlyCache;
		}
	}

	public Cache upCache(String sCacheName) {
		return cManager.getCache(sCacheName);
	}

	
}
