package com.srnpr.zcom.init;

import javax.servlet.ServletContext;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.helper.IoHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zcom.manager.MessageCacheManager;

public class InitRoot extends BaseClass implements IBaseInit {

	
	
	
	
	
	public synchronized void Init() {
		try {
			
			 CommonConst commonConst=new CommonConst();
			 commonConst.Put(EComConst.server_encoding, "UTF-8");
			
			 
			 
			 //初始化各种文件到指定路径
			 IoHelper ioHelper=new IoHelper();
			 ioHelper.ResourcesMove("classpath*:com/srnpr/*/zsrnpr/**/*.*", CommonConst.Get(EComConst.root_realpath_zsrnpr), "zsrnpr");
			 ioHelper.ResourcesMove("classpath*:com/srnpr/zzero/**/*.*", CommonConst.Get(EComConst.root_realpath_zzero), "srnpr/zzero");
			 
			 
			 //初始化各种配置
			 ConfigCacheManager configCacheManager=new ConfigCacheManager();
			 configCacheManager.InitConfig(CommonConst.Get(EComConst.root_realpath_zsrnpr)+"/config");
			 configCacheManager.FlushConfig();
			 
			 
			 //初始化各种消息
			 MessageCacheManager messageCacheManager=new MessageCacheManager();
			 messageCacheManager.Init();
			 
			 
			 
			 InitClass("zsrnpr.init");
			
			
			
			
			
		} catch (Exception e) {
			ComFunction.ThrowError(e);
		}
	}
	
	
	
	

	 public synchronized void InitConst(ServletContext servletContext) {
		
		 
		 CommonConst commonConst=new CommonConst();
		 commonConst.SetWebServerFlag(true);
		 String sReallPath= servletContext.getRealPath("");
		 commonConst.Put(EComConst.root_realpath_baseweb, sReallPath);
		 
		 commonConst.Put(EComConst.server_web_name, servletContext.getContextPath());
		
		 
		 commonConst.Put(EComConst.root_realpath_zsrnpr, sReallPath+"/WEB-INF/zsrnpr/");
		 commonConst.Put(EComConst.root_realpath_zzero, sReallPath+"/zzero/");
		
		
		 
		 
		 
	}
	 
	 
	 
	 
	 




	
	
	
	
	void InitClass(String sConfigName) throws ClassNotFoundException, InstantiationException, IllegalAccessException
	{
	
		
		ConfigCacheManager configCacheManager=new ConfigCacheManager();
		
		
		for(String sClassName:configCacheManager.GetStrings(sConfigName))
		{
			try {
				Class<?> cClass=Class.forName(sClassName);
				if(cClass!=null&&cClass.getDeclaredMethods()!=null)
				{
					IBaseInit init=(IBaseInit)cClass.newInstance();
					init.Init();
				}
			} catch (Exception e) {
				ComFunction.ThrowError(e);
			}
			
		}
	}
}
