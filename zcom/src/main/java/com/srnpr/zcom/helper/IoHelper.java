package com.srnpr.zcom.helper;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.io.IOUtils;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import com.srnpr.zcom.common.ComFunction;

public class IoHelper {

	
	
	
	
	
	
	public static Resource[] GetResource(String sResourceName)
	{
		
		Resource[] resources=null;
		try {
			PathMatchingResourcePatternResolver patternResolver = new PathMatchingResourcePatternResolver();  
	    	
	    	 resources = patternResolver.getResources(sResourceName);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return resources;
	}
	
	
	public static void ResourcesMove(String sFromClass,String sToPath,String sKeyName) 
	{
		try {
		
		Resource[] resources=GetResource(sFromClass);
		
		for(Resource r:resources)
		{
			
			String sUrlString=r.getURI().toString();
			sUrlString=sUrlString.substring(sUrlString.indexOf(sKeyName)+sKeyName.length()+1);
			
			
			 InputStream  inStream  = r.getInputStream();  //读入原文件  
			 
			 
			 new File(sToPath+sUrlString).getParentFile().mkdirs();
             FileOutputStream  fs  =  new  FileOutputStream(sToPath+sUrlString);  
			
			
			IOUtils.copy(inStream, fs);
			fs.flush();
			fs.close();
			
			
			ComFunction.OutLog(sUrlString);
			
			
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
}
