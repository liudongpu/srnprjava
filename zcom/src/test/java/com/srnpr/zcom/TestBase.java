package com.srnpr.zcom;

import org.junit.Test;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;
import net.sf.ehcache.config.Configuration;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.init.InitJunit;

public class TestBase extends BaseClass {

	public  TestBase() {

		//new InitJunit().Init();



	}
	
	
	@Test
	public void testCache()
	{
		
		
		
		 Configuration configuration=new Configuration();
		 
		 
		CacheManager cacheManager=new CacheManager(configuration);
		 
		Cache memoryOnlyCache = new Cache("testCache", 5000, false, false, 5, 2);
		
		
		
	}
	
	

}
