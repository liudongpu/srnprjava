package com.srnpr.zweb.init;

import java.io.IOException;

import org.springframework.core.io.Resource;

import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.enumer.ERunType;
import com.srnpr.zcom.helper.HashHelper;
import com.srnpr.zcom.helper.IoHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.init.InitJunit;
import com.srnpr.zcom.manager.ConfigCacheManager;
import com.srnpr.zcom.model.MPropertiesHash;
import com.srnpr.zweb.common.WebConst;
import com.srnpr.zweb.enumer.EWebConst;

public class InitWeb implements IBaseInit {

	public synchronized void Init() {

		ComFunction.OutLog(this.getClass().getName());
		
		try {
			
			
			InitTemplete(ComFunction.ConfigValue("zweb.templeteclaspath"));
			
			InitPageConfig();
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		

	}
	
	
	
	private void InitPageConfig() {
		
		WebConst.PageConfig().put("admin_include", ComFunction.ConfigHash("zweb.admin_include"));

		String sAdminTheamsName=ComFunction.ConfigValue("zweb.admin_themes");
		
		String sAdminTheamsPath= CommonConst.Get(EComConst.root_realpath_zero)+ComFunction.ConfigValue("zweb.path_themes")
									+"/"+sAdminTheamsName+"/"+sAdminTheamsName+ComFunction.ConfigValue("zcom.configfile_fix");
		
		
		
		MPropertiesHash mTheamsHash=new HashHelper().getMPropertiesHash(sAdminTheamsPath, "");
		WebConst.PageConfig().put("admin_css", HashHelper.GetStringFromCurrentHash(mTheamsHash.getChild().get("admin_css")));
		
		
		
		
		
		
		
	}



	void InitTemplete(String sClassPath) throws IOException
	{
		
		WebConst.Put(EWebConst.templete_path, CommonConst.Get(EComConst.root_realpath_zsrnpr)+ComFunction.ConfigValue("zweb.path_templete"));
		
		
	}
	

}
