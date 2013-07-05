package com.srnpr.zcom.top;

import net.sf.ehcache.Element;

public class TopStatic<T> {

	
	
	public T init(String sCacheName,String sTname,T t)
	{
		
		TopCache topCache=new TopCache();

		topCache.inCache(sCacheName);
		Element element=new Element(sTname, t);
		topCache.upCache(sCacheName).put(element);
		
		
		
		return (T)topCache.upCache(sCacheName).get(sTname).getObjectValue();
		
	}
	
	
}
