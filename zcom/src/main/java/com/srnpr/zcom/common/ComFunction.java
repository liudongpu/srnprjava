package com.srnpr.zcom.common;

import java.util.concurrent.ConcurrentHashMap;

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
		return ConfigCacheManager.GetHash(sKey);
	}
	
	
	 /**
	 * @param sMessage
	 * @description 
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-3 下午11:25:12
	 */
		
	public static void OutLog(Object... sMessage) {
		
		
		
		System.out.println(FormatHelper.GetDateTime()+"  "+FormatHelper.StringJoin(sMessage));
	}
	
	
	
	public static void ThrowError(String sError)
	{
		ThrowError(new Exception(sError));
	}
	public static void ThrowError(Exception e)
	{
		e.printStackTrace();
		
	}
	
	
	
}
