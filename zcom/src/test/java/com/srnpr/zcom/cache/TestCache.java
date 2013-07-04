package com.srnpr.zcom.cache;

import static org.junit.Assert.*;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;

import org.junit.Test;

import com.srnpr.zcom.TestBase;

public class TestCache extends TestBase {

	@Test
	public void test() {
		//fail("Not yet implemented");
		
		ComCache c=new ComCache();
		c.init();
		
		
		
		Cache testCache=CacheManager.getInstance().getCache("testCache");
		
		 testCache.getName();
		;
		
		BLog().debug( testCache.get("aa").getObjectValue().toString());
	}

}
