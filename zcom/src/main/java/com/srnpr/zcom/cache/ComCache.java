package com.srnpr.zcom.cache;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.Element;

public class ComCache {

	
	
	public void init()
	{
		CacheManager singletonManager = CacheManager.create();  
        Cache memoryOnlyCache = new Cache("testCache", 5000, false, false, 5, 2);  
        
       // Element ec=new Element("aa", "bb"); 
       // memoryOnlyCache.put(ec);
       
        singletonManager.addCache(memoryOnlyCache);  
        Cache testCache = singletonManager.getCache("testCache");  
        
        
        
	}
	
	
	public void inCache()
	{
		
	}
	
	
	public void upCache()
	{
		
	}
	
	
	
	
	
}
