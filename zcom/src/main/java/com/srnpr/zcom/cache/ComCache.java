package com.srnpr.zcom.cache;

import com.srnpr.zcom.manager.ConfigCacheManager;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;
import net.sf.ehcache.config.CacheConfiguration;
import net.sf.ehcache.config.Configuration;

public class ComCache {

	
	
	public void init()
	{
		
		
		CacheManager singletonManager = CacheManager.create();  
        Cache memoryOnlyCache = new Cache("testCache", 5000, false, true, 0, 0);  
        singletonManager.addCache(memoryOnlyCache);  
        
        
        Element ec=new Element("aa", "bb"); 
        memoryOnlyCache.put(ec);
       
        //WsingletonManager.addCache(memoryOnlyCache);  
        Cache testCache = singletonManager.getCache("testCache");  
        
        
        
	}
	
	
	public void inCache()
	{
		
	}
	
	
	public void upCache()
	{
		
	}
	
	
	
	
	
}
