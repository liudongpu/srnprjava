package com.srnpr.zcom.manager;

import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.i.ICacheManager;

public class ConfigCacheManager implements ICacheManager {

	
    
     /**
      * @description 单例模式
     */
    	
    private ConfigCacheManager() {  
        super();  
    }  
	
	
		
	

	
	
	
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
	
		
		return ConstStatic.CONST_CONFIG_MAP.get(CommonConst.GetConfigPath()+ sKey);
	}

	
	
	public static String[] GetArray(String sKey)
	{
		return HashHelper.GetStringFromCurrentHash(ConstStatic.CONST_CONFIG_HASH.get(CommonConst.GetConfigPath()+sKey));
	}
	
	


	
	
	
	
	

}
