package com.srnpr.zcom.manager;

import java.io.File;
import java.io.IOException;
import java.io.Reader;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.springframework.core.io.Resource;

import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.helper.IoHelper;
import com.srnpr.zcom.i.ICacheManager;
import com.srnpr.zcom.model.MPropertiesHash;

public class ConfigCacheManager implements ICacheManager {

	

	
	 /**
	 * @return
	 * @description 
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-2 下午11:57:46
	 * @see com.srnpr.zcom.i.ICacheManager#Refresh()
	 */
		
	public synchronized  boolean Refresh() {
		
		return false;
	}

	public static String Get(String sKey) {
	
		
		return ConstStatic.CONST_CONFIG_MAP.get( sKey);
	}

	
	
	public static String[] GetArray(String sKey)
	{
		return HashHelper.GetStringFromCurrentHash(ConstStatic.CONST_CONFIG_HASH.get(sKey));
	}
	
	
	public static ConcurrentHashMap<String, String> GetHash(String sKey)
	{
		return ConstStatic.CONST_CONFIG_HASH.get(sKey);
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
		
	public void InitConfig(String sResourceName) throws ConfigurationException, IOException
	{
		
		
		Collection<File> files= FileUtils.listFiles((new File(sResourceName)),new String[]{"properties"}, true);

		for(File f:files)
		{
			
					String sFileNameString=f.getName();
					String sLeftString= sFileNameString.substring(0,sFileNameString.lastIndexOf("."))+".";
					HashHelper hashHelper=new HashHelper();
					MPropertiesHash mHash=hashHelper.getMPropertiesHash(f, sLeftString);
					Enumeration<String> eKey=mHash.getKeyValue().keys();
					while (eKey.hasMoreElements()) {
						String sKey = eKey.nextElement();
						ConstStatic.CONST_CONFIG_MAP.put(sKey,mHash.getKeyValue().get(sKey));
					}
					
					Enumeration<String> eHashKey=mHash.getChild().keys();
					while (eHashKey.hasMoreElements()) {
						String sKey = eHashKey.nextElement();
						ConstStatic.CONST_CONFIG_HASH.put(sKey,mHash.getChild().get(sKey));
					}
					
			}

		
		
		
	}
	
	
	

}
