package com.srnpr.zcom.manager;



import java.io.File;
import java.util.Collection;
import java.util.Enumeration;

import org.apache.commons.io.FileUtils;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.i.ICacheManager;
import com.srnpr.zcom.model.MPropertiesHash;

public class MessageCacheManager extends BaseClass implements ICacheManager,
		IBaseInit {

	
	
	public static String Get(String sKey)
	{
		return ConstStatic.CONST_COM_MESSAGE.get(sKey);
	}
	
	
	
	
	
	public void Init() {
		
		@SuppressWarnings("unchecked")
		Collection<File> files = FileUtils.listFiles((new File(BConfig("zcom.path_message"))),
				new String[] { BConfig("zcom.messagefile_fix") }, true);
		BDebug(BConfig("zcom.path_message"));
		
		HashHelper hashHelper = new HashHelper();
		for (File f : files) {
			MPropertiesHash mHash = hashHelper.getMPropertiesHash(f,
					"");
			
			Enumeration<String> eKey = mHash.getKeyValue().keys();
			while (eKey.hasMoreElements()) {
				String sKey = eKey.nextElement();
				ConstStatic.CONST_COM_MESSAGE.put(sKey,
						mHash.getKeyValue().get(sKey));
			}

		}
	}

	public boolean Refresh() {
		
		return false;
	}

}
