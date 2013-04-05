package com.srnpr.zcom.helper;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.commons.io.FileUtils;

import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.model.MPropertiesHash;

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
	
	
	
	
	public MPropertiesHash getMPropertiesHash(String sFilePath,String sLeftPad)
	{
		return getMPropertiesHash(new File(sFilePath), sLeftPad);
	}
	
	
	public MPropertiesHash getMPropertiesHash(File fFile,String sLeftPad)
	{
		
		PropertiesConfiguration pConfiguration=new PropertiesConfiguration();
		
		try {
			pConfiguration.load(FileUtils.openInputStream(fFile),CommonConst.Get(EComConst.server_encoding));
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return getMPropertiesHash(pConfiguration, sLeftPad);
		
		
	}
	
	
	
	public  MPropertiesHash getMPropertiesHash(PropertiesConfiguration pConfiguration,String sLeftPad)
	{
		MPropertiesHash mHash=new MPropertiesHash();
		
		
		Iterator<String> em=pConfiguration.getKeys();
		while (em.hasNext()) {
			String sKeyString=(String)em.next();
			//String sValueString=pJarConfiguration.getString(sKeyString);
			String sValueString=new String(pConfiguration.getProperty(sKeyString).toString());
			if(!sKeyString.isEmpty())
			{
				int iIndex=sKeyString.indexOf("[");
				if( iIndex<0&&!sKeyString.endsWith("]"))
				{
					mHash.getKeyValue().put(sLeftPad+sKeyString, sValueString);
				}
				else
				{
					String sHashKey=sLeftPad+sKeyString.substring(0,iIndex);
					
					if(!mHash.getChild().containsKey(sHashKey))
					{
						mHash.getChild().put(sHashKey, new ConcurrentHashMap<String, String>());
					}
					
					String sSubKey=sKeyString.substring(iIndex+1,sKeyString.length()-1);
					
					mHash.getChild().get(sHashKey).put(sSubKey, sValueString);
					
					
				}
			}
			
		}
		
		
		return mHash;
		
	}
	
	
	
	
	
}
