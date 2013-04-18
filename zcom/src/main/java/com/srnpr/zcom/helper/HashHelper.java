package com.srnpr.zcom.helper;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.apache.commons.configuration.PropertiesConfiguration;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang.StringUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.model.MHashMap;
import com.srnpr.zcom.model.MPropertiesHash;

public class HashHelper extends BaseClass{






	/**
	 * @param cMapList 
	 * @return
	 * @description 转换Hash值为String[]
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-6 下午4:01:06
	 */

	public  String[] upStringFromCurrentHash(ConcurrentHashMap<String, String> cMap)
	{


		ArrayList<String> aList=new ArrayList<String>();



		Enumeration<String> iterator=cMap.keys();
		while (iterator.hasMoreElements()) {
			String sKey = iterator.nextElement();
			aList.add(cMap.get(sKey));
		}

		String[] sReturn=new String[aList.size()];

		return aList.toArray(sReturn);


	}




	
	 /**
	 * @param sFilePath
	 * @param sLeftPad
	 * @return
	 * @description 根据文件得到配置
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-17 下午10:43:59
	 */
		
	public MPropertiesHash upMPropertiesHash(String sFilePath,String sLeftPad)
	{
		return upMPropertiesHash(new File(sFilePath), sLeftPad);
	}


	
	 /**
	 * @param fFile
	 * @param sLeftPad
	 * @return
	 * @description 根据文件得到配置
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-17 下午10:43:43
	 */
		
	public MPropertiesHash upMPropertiesHash(File fFile,String sLeftPad)
	{

		PropertiesConfiguration pConfiguration=new PropertiesConfiguration();

		try {

			FileInputStream fInputStream=FileUtils.openInputStream(fFile);

			pConfiguration.load(fInputStream,CommonConst.Get(EComConst.server_encoding));

			fInputStream.close();


		} catch (Exception e) {



			BError(e,967901003,fFile.getPath());

		}

		return upMPropertiesHash(pConfiguration, sLeftPad);


	}



	
	 /**
	 * @param pConfiguration
	 * @param sLeftPad
	 * @return
	 * @description 根据配置文件得到配置
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-17 下午10:42:17
	 */
		
	private  MPropertiesHash upMPropertiesHash(PropertiesConfiguration pConfiguration,String sLeftPad)
	{
		MPropertiesHash mHash=new MPropertiesHash();
		Iterator<String> em=pConfiguration.getKeys();
		while (em.hasNext()) {
			String sKeyString=em.next();
			//String sValueString=pJarConfiguration.getString(sKeyString);
			String sValueString=new String(pConfiguration.getProperty(sKeyString).toString());


			String sLeftAddString=sLeftPad;

			if(!sKeyString.isEmpty())
			{

				//判断如果是参数左边的第一个字母为$ 则视该属性为覆写属性
				if(sKeyString.substring(0,1).equals("$"))
				{
					sKeyString=sKeyString.substring(1);
					sLeftAddString="";
				}


				int iIndex=sKeyString.indexOf("[");
				if( iIndex<0&&!sKeyString.endsWith("]"))
				{
					mHash.getKeyValue().put(sLeftAddString+sKeyString, sValueString);
				}
				else if(sKeyString.substring(iIndex+1).equals("]"))
				{
					sLeftAddString="";
					//不做任何操作  如果是[]  等待后续初始化
				}
				else
				{
					String sHashKey=sLeftAddString+sKeyString.substring(0,iIndex);

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


	
	
	
	
	 /**
	 * @param sInput  结构为a=b&c=d&e=f
	 * @return
	 * @description 
	 * @version 1.0
	 * @author srnpr
	 * @update 2013-4-17 下午10:46:37
	 */
		
	public static MHashMap atConvertStringToHash(String sInput)
	{
		
		MHashMap mHashMap=new MHashMap();
		
		if(sInput!=null)
		{
		
		for(String s:sInput.split("&"))
		{
			String[] sTemps=s.split("=");
			if(sTemps.length==2)
			{
				mHashMap.put(sTemps[0], sTemps[1]);
			}
		}
		}
		return mHashMap;
		
	}
	
	
	
	
	



}
