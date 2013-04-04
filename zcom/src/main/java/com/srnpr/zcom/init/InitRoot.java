package com.srnpr.zcom.init;

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
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.helper.IoHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.init.InitJunit;
import com.srnpr.zcom.manager.ConfigCacheManager;

public class InitRoot implements IBaseInit {

	
	
	
	
	
	public synchronized void Init() {
		try {
			
			 CommonConst commonConst=new CommonConst();
			 commonConst.Put(EComConst.server_encoding, "UTF-8");
			
			
			new ConfigCacheManager().InitConfig("classpath*:com/srnpr/*/zsrnpr/config/*.properties");
			InitClass("zsrnpr.init");
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	
	
	

	 public synchronized void InitConst(ServletContext servletContext) {
		
		 
		 CommonConst commonConst=new CommonConst();
		 commonConst.SetWebServerFlag(true);
		 String sReallPath= servletContext.getRealPath("");
		 commonConst.Put(EComConst.server_web_path, sReallPath);
		 
		 commonConst.Put(EComConst.server_web_contentname, servletContext.getContextPath());
		
		 
		 commonConst.Put(EComConst.root_realpath_zsrnpr, sReallPath+"/WEB-INF/zsrnpr/");
		 commonConst.Put(EComConst.root_realpath_zero, sReallPath+"/zzero/");
		
		 IoHelper.ResourcesMove("classpath*:com/srnpr/*/zsrnpr/**/*.*", CommonConst.Get(EComConst.root_realpath_zsrnpr), "zsrnpr");
		 
		 IoHelper.ResourcesMove("classpath*:com/srnpr/zzero/**/*.*", CommonConst.Get(EComConst.root_realpath_zero), "srnpr/zzero");
		 
		 
		 
		 
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
