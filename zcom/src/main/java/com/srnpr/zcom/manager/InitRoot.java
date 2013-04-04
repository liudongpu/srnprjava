package com.srnpr.zcom.manager;

import java.io.IOException;
import java.rmi.server.ServerCloneException;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.ServletContext;

import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.commons.io.IOUtils;
import org.springframework.core.io.Resource;

import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.helper.IoHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.init.InitJunit;

public class InitRoot implements IBaseInit {

	
	
	
	
	
	public synchronized void Init() {
		
		
		try {

			InitConfig("classpath*:com/srnpr/*/zsrnpr/config/*.properties");
			InitClass("zsrnpr.init");
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		

	}
	
	
	
	 
	 public synchronized void InitConst(ServletContext servletContext) {
		
		 
		 CommonConst commonConst=new CommonConst();
		 commonConst.SetWebServerFlag(true);
		 String sReallPath= servletContext.getRealPath("");
		 commonConst.SetWebServerPath(sReallPath);
		
		 IoHelper.ResourcesMove("classpath*:com/srnpr/*/zsrnpr/templete/**/*.ftl", sReallPath+"/WEB-INF/", "zsrnpr");
		 
		 IoHelper.ResourcesMove("classpath*:com/srnpr/zzero/**/*.*", sReallPath+"/zzero", "zsrnpr");
	}
	 
	 
	 
	 
	 




	/**
	 * @param sResourceName
	 * @description 
	 * @version 1.0
	 * @author srnpr
	 * @throws IOException 
	 * @throws ConfigurationException 
	 * @update 2013-4-4 下午2:56:12
	 */
		
	void InitConfig(String sResourceName) throws ConfigurationException, IOException
	{
		
			for(Resource r:IoHelper.GetResource(sResourceName))
			{
				
					PropertiesConfiguration pJarConfiguration=new PropertiesConfiguration(r.getURL());
					
					String sFileNameString=r.getFilename();
					
					String sLeftString=CommonConst.GetConfigPath()+ sFileNameString.substring(0,sFileNameString.lastIndexOf("."))+".";
					
					
				
					Iterator<String> em=pJarConfiguration.getKeys();
					while (em.hasNext()) {
						String sKeyString=(String)em.next();
						String sValueString=pJarConfiguration.getString(sKeyString);
						
						if(!sKeyString.isEmpty())
						{
							int iIndex=sKeyString.indexOf("[");
							if( iIndex<0&&!sKeyString.endsWith("]"))
							{
								ConstStatic.CONST_CONFIG_MAP.put(sLeftString+sKeyString, sValueString);
							}
							else
							{
								String sHashKey=sLeftString+sKeyString.substring(0,iIndex);
								
								if(!ConstStatic.CONST_CONFIG_HASH.containsKey(sHashKey))
								{
									ConstStatic.CONST_CONFIG_HASH.put(sHashKey, new ConcurrentHashMap<String, String>());
								}
								
								String sSubKey=sKeyString.substring(iIndex+1,sKeyString.length()-1);
								
								ConstStatic.CONST_CONFIG_HASH.get(sHashKey).put(sSubKey, sValueString);
								
								
							}
						}
						
					}
			}

		
		
		
	}
	
	
	
	void InitClass(String sConfigName) throws ClassNotFoundException, InstantiationException, IllegalAccessException
	{
		
		for(String sClassName:ComFunction.ConfigArray(sConfigName))
		{
			try {
				Class<?> cClass=Class.forName(sClassName);
				if(cClass!=null&&cClass.getDeclaredMethods()!=null)
				{
					IBaseInit init=(IBaseInit)cClass.newInstance();
					init.Init();
				}
			} catch (Exception e) {
				// TODO: handle exception
			}
			
		}
	}
}
