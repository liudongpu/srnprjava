package com.srnpr.zcom.helper;

import java.util.Enumeration;
import java.util.concurrent.ConcurrentHashMap;

public class HashHelper {

	
	
	public static String[] GetStringFromCurrentHash(ConcurrentHashMap<String, String> cMap)
	{
		String[] sReturn=new String[cMap.size()];
		
		Enumeration<String> iterator=cMap.keys();
		int iIndex=0;
		while (iterator.hasMoreElements()) {
			String sKey = (String) iterator.nextElement();
			
			sReturn[iIndex]=cMap.get(sKey);
			iIndex++;
		}
		
		return sReturn;
		
		
	}
	
	
}
