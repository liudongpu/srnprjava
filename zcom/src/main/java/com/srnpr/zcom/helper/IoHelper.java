package com.srnpr.zcom.helper;

import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

public class IoHelper {

	
	
	
	
	
	
	public static Resource[] GetResource(String sResourceName)
	{
		
		Resource[] resources=null;
		try {
			PathMatchingResourcePatternResolver patternResolver = new PathMatchingResourcePatternResolver();  
	    	
	    	 resources = patternResolver.getResources(sResourceName);
		}
		catch(Exception ex)
		{
			
		}
		
		return resources;
	}
	
	
}
