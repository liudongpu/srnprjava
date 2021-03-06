package com.srnpr.zcom.helper;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.io.IOUtils;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

public class IoHelper {







	public  Resource[] GetResource(String sResourceName) throws IOException
	{

		Resource[] resources=null;

		PathMatchingResourcePatternResolver patternResolver = new PathMatchingResourcePatternResolver();  



		resources = patternResolver.getResources(sResourceName);


		return resources;
	}


	public  void ResourcesCopy(String sFromClass,String sToPath,String sKeyName) throws IOException 
	{


		Resource[] resources=GetResource(sFromClass);

		for(Resource r:resources)
		{

			String sUrlString=r.getURI().toString();
			sUrlString=sUrlString.substring(sUrlString.lastIndexOf(sKeyName)+sKeyName.length());


			InputStream  inStream  = r.getInputStream();  //读入原文件  


			new File(sToPath+sUrlString).getParentFile().mkdirs();
			FileOutputStream  fs  =  new  FileOutputStream(sToPath+sUrlString);  


			IOUtils.copy(inStream, fs);
			fs.flush();
			fs.close();




		}










	}



	public Object GetBeanFromFile(String sFilePath,String sBeanName)
	{

		AbstractApplicationContext ctx = new FileSystemXmlApplicationContext(sFilePath);
		return ctx.getBean(sBeanName);


	}









}
