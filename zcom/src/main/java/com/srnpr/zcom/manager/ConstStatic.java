package com.srnpr.zcom.manager;

import java.util.concurrent.ConcurrentHashMap;


 /**
 * @description 
 * @version 1.0
 * @author srnpr
 * @ClassName: ConstStatic
 * @update 2013-4-4 下午12:05:26
 */
	
class ConstStatic {

	
	
	 
	 /**
	 * @fields CONST_CONFIG_MAP 默认配置加载
	 */
		
	static ConcurrentHashMap<String, String> CONST_CONFIG_MAP=new ConcurrentHashMap<String, String>();
	
	
	
	static ConcurrentHashMap<String, ConcurrentHashMap<String, String>> CONST_CONFIG_HASH=new ConcurrentHashMap<String, ConcurrentHashMap<String,String>>();
	
	
}
