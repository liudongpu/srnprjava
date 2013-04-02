package com.srnpr.zcom.manager;

import java.util.concurrent.ConcurrentHashMap;

import com.srnpr.zcom.i.ICacheManager;

public class ConfigCacheManager implements ICacheManager {

	
    
     /**
      * @description 单例模式
     */
    	
    private ConfigCacheManager() {  
        super();  
    }  
	
	
	 /**
	 * @fields cMap
	 */
		
	private static ConcurrentHashMap<String, String> cMap=new ConcurrentHashMap<String, String>();

	
	
	
	 /**
	 * @return
	 * @description 
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-2 下午11:57:46
	 * @see com.srnpr.zcom.i.ICacheManager#Refresh()
	 */
		
	public synchronized  boolean Refresh() {
		
		return false;
	}

	public static String Get(String sKey) {
		
		return cMap.get(sKey);
	}

	
	


	
	
	
	
	

}
