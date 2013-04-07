package com.srnpr.zcom.manager;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.configuration.ConfigurationException;
import org.apache.commons.io.FileUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.i.ICacheManager;
import com.srnpr.zcom.model.MPropertiesHash;


 /**
 * @description 
 * @version 1.0
 * @author srnpr
 * @ClassName: ConfigCacheManager
 * @update 2013-4-7 下午5:42:44
 */
	
public class ConfigCacheManager extends BaseClass implements ICacheManager {

	/**
	 * @return
	 * @description
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-2 下午11:57:46
	 * @see com.srnpr.zcom.i.ICacheManager#Refresh()
	 */

	public synchronized boolean Refresh() {

		return false;
	}

	public static String Get(String sKey) {

		return ConstStatic.CONST_CONFIG_MAP.get(sKey);
	}
	
	
	 /**
	 * @param sKeys
	 * @return 
	 * @description   根据key返回数组
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-7 下午5:42:48
	 */
		
	public  String[] GetStrings(String... sKeys)
	{
		ArrayList<String> aList=new ArrayList<String>();
		
		for(String s:sKeys)
		{
			ConcurrentHashMap<String, String> cMap=GetHash(s);
			Enumeration<String> iterator=cMap.keys();
			while (iterator.hasMoreElements()) {
				String sKey = (String) iterator.nextElement();
				aList.add(cMap.get(sKey));
			}
		}
		
		String[] sReturn=new String[aList.size()];
		return aList.toArray(sReturn);
	}
	
	


	public static ConcurrentHashMap<String, String> GetHash(String sKey) {
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

	public void InitConfig(String sResourceName) throws ConfigurationException,
			IOException {

		@SuppressWarnings("unchecked")
		Collection<File> files = FileUtils.listFiles((new File(sResourceName)),
				new String[] { "properties" }, true);
		HashHelper hashHelper = new HashHelper();
		for (File f : files) {

			String sFileNameString = f.getName();
			String sLeftString = sFileNameString.substring(0,
					sFileNameString.lastIndexOf("."))
					+ ".";
			
			MPropertiesHash mHash = hashHelper.getMPropertiesHash(f,
					sLeftString);
			Enumeration<String> eKey = mHash.getKeyValue().keys();
			while (eKey.hasMoreElements()) {
				String sKey = eKey.nextElement();
				ConstStatic.CONST_CONFIG_MAP.put(sKey,
						mHash.getKeyValue().get(sKey));
			}

			Enumeration<String> eHashKey = mHash.getChild().keys();
			while (eHashKey.hasMoreElements()) {
				String sKey = eHashKey.nextElement();
				ConstStatic.CONST_CONFIG_HASH.put(sKey,
						mHash.getChild().get(sKey));
			}

		}
	}

	public void FlushConfig() {
		FlushAuto();

		int iSum = 1;
		int iTimeCount = 0;
		while (iSum > 0) {
			iSum = FlushAuto();
			iTimeCount++;
			if (iTimeCount > 100) {

				ComFunction.ThrowError(this.getClass().getName()
						+ "  FlushConfig eroor");

			}
		}

	}

	int FlushAuto() {

		int iReturn = 0;
		iReturn += FlushHash(ConstStatic.CONST_CONFIG_MAP);
		Enumeration<String> eHashKey = ConstStatic.CONST_CONFIG_HASH.keys();
		while (eHashKey.hasMoreElements()) {
			iReturn += FlushHash(ConstStatic.CONST_CONFIG_HASH.get(eHashKey
					.nextElement()));
		}

		return iReturn;
	}

	int FlushHash(ConcurrentHashMap<String, String> cMap) {
		int iReturn = 0;

		Pattern pConst = Pattern.compile("\\{\\@(.*?)\\}");

		Pattern pConfig = Pattern.compile("\\{\\$(.*?)\\}");

		Enumeration<String> eMapKey = cMap.keys();

		while (eMapKey.hasMoreElements()) {
			String sKeyString = (String) eMapKey.nextElement();
			String sValueString = cMap.get(sKeyString);

			Matcher mConstMatcher = pConst.matcher(sValueString);
			while (mConstMatcher.find()) {

				String[] sConstKey = mConstMatcher.group(1).split(":");

				if (sConstKey.length == 2) {
					if (sConstKey[0].equals("commonconst")) {
						String sConstValueString = CommonConst.Get(EComConst
								.valueOf(sConstKey[1]));

						sValueString = sValueString.replace(
								mConstMatcher.group(0), sConstValueString);
						cMap.put(sKeyString, sValueString);
					}
				}

			}

			Matcher mConfigMatcher = pConfig.matcher(sValueString);

			while (mConfigMatcher.find()) {

				String sConfigName = mConfigMatcher.group(1).trim();

				String sConfigValue = Get(sConfigName);

				
				if (sConfigValue!=null) {
					if (sConfigValue.indexOf("{@") > -1
							|| sConfigValue.indexOf("{$") > -1) {
						iReturn++;
					} else {
						
						sValueString=sValueString.replace(
								mConfigMatcher.group(0), sConfigValue);

						cMap.put(sKeyString, sValueString);
					}
				}

			}

		}

		return iReturn;

	}

}
