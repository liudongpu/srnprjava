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


 /**
 * @description 传说中的最早调用者
 * @version 1.0
 * @author srnpr
 * @ClassName: InitRoot
 * @update 2013-4-8 上午12:02:58
 */
	
public class InitRoot extends BaseClass implements IBaseInit {

	
	 /**
	 * @description 基本初始化类 加载各种系统配置文件
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-8 上午12:02:18
	 * @see com.srnpr.zcom.i.IBaseInit#Init()
	 */
		
	public synchronized void Init() {
		try {

			long start = System.currentTimeMillis(); // 获取最初时间

			CommonConst commonConst = new CommonConst();
			commonConst.Put(EComConst.server_encoding, "UTF-8");

			// 初始化各种文件到指定路径
			IoHelper ioHelper = new IoHelper();
			ioHelper.ResourcesCopy("classpath*:com/srnpr/*/zsrnpr/**/*.*",
					CommonConst.Get(EComConst.root_realpath_zsrnpr), "/zsrnpr/");
			ioHelper.ResourcesCopy("classpath*:com/srnpr/zzero/**/*.*",
					CommonConst.Get(EComConst.root_realpath_zzero), "/zzero/");

			// 初始化各种配置
			ConfigCacheManager configCacheManager = new ConfigCacheManager();
			configCacheManager.InitConfig(CommonConst
					.Get(EComConst.root_realpath_zsrnpr) + "/config");
			configCacheManager.FlushConfig();

			// 初始化各种消息
			MessageCacheManager messageCacheManager = new MessageCacheManager();
			messageCacheManager.Init();

			BDebug(967912001);

			// 加载各种标准初始化类
			InitClass("zsrnpr.init");

			long end = System.currentTimeMillis(); // 获取运行结束时间

			BDebug(967912003, String.valueOf(end - start));

		} catch (Exception e) {
			BError(e,0, e.getMessage());
		}
	}

	
	 /**
	 * @param servletContext
	 * @description 初始化各种系统级别变量  此方法调用在Init之前 否则无法初始各种变量
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-8 上午12:01:33
	 */
		
	public synchronized void InitConst(ServletContext servletContext) {

		CommonConst commonConst = new CommonConst();
		commonConst.SetWebServerFlag(true);
		String sReallPath = servletContext.getRealPath("");
		commonConst.Put(EComConst.root_realpath_baseweb, sReallPath);

		commonConst.Put(EComConst.server_web_name,
				servletContext.getContextPath());

		commonConst.Put(EComConst.root_realpath_zsrnpr, sReallPath
				+ "/WEB-INF/zsrnpr/");
		commonConst.Put(EComConst.root_realpath_zzero, sReallPath + "/zzero/");

	}

	
	 /**
	 * @param sConfigName
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 * @description 加载各种类
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-8 上午12:01:19
	 */
		
	void InitClass(String sConfigName) throws ClassNotFoundException,
			InstantiationException, IllegalAccessException {

		ConfigCacheManager configCacheManager = new ConfigCacheManager();

		for (String sClassName : configCacheManager.GetStrings(sConfigName)) {

			try {
				Class<?> cClass = Class.forName(sClassName);
				if (cClass != null && cClass.getDeclaredMethods() != null) {
					IBaseInit init = (IBaseInit) cClass.newInstance();
					init.Init();
				}
			} catch (Exception e) {
				
				BError(e,967901005,sClassName);
				
			}
			

		}
	}
}
