package com.srnpr.zcom.common;

import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.helper.FormatHelper;
import com.srnpr.zcom.manager.ConfigCacheManager;


/**
 * @description 通用处理函数
 * @version 1.0
 * @author srnpr
 * @ClassName: ComFunction
 * @update 2013-4-2 下午11:26:54
 */

public class ComFunction {





	/**
	 * @param sKey
	 * @return
	 * @description Config
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-3 上午12:01:45
	 */

	public static String ConfigValue(String sKey)
	{

		return ConfigCacheManager.Get(sKey);
	}



	public static ConcurrentHashMap<String, String> ConfigHash(String sKey)
	{
		return  ConfigCacheManager.GetHash(sKey);
	}


	/**
	 * @param sMessage
	 * @description 
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-3 下午11:25:12
	 */

	public static void OutLog(Object... sMessage) {

		System.out.println(FormatHelper.GetDateTime()+"  "+StringUtils.join(sMessage,"  "));
	}


	
	public static void upUrl(String sBaseUrl,String sPath,String sTarget,Object... oParams)
	{
		
		StringBuffer sBuffer=new StringBuffer();
		
		sBuffer.append(sPath);
		if(!StringUtils.isEmpty(sTarget))
		{
			sBuffer.append("-"+sTarget);
		}
		
		sBuffer.append("/");
		
		sBuffer.append(StringUtils.join(oParams,"-"));
		
		
		
		
	}

	
	
	
	 /**
	 * @return 生成32位UUID
	 * @description 
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-20 上午12:58:20
	 */
		
	public static String upUuid()
	{
		return UUID.randomUUID().toString().replace("-", "");
	}




}
