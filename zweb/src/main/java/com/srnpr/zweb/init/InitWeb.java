package com.srnpr.zweb.init;

import java.io.IOException;

import org.springframework.core.io.Resource;

import com.srnpr.zcom.common.ComFunction;
import com.srnpr.zcom.common.CommonConst;
import com.srnpr.zcom.enumer.EComConst;
import com.srnpr.zcom.enumer.ERunType;
import com.srnpr.zcom.helper.IoHelper;
import com.srnpr.zcom.i.IBaseInit;
import com.srnpr.zcom.init.InitJunit;
import com.srnpr.zweb.common.WebConst;

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
		
		
		
		
		WebConst.PageConfig().put("staticurl", "aa");
		
	}



	void InitTemplete(String sClassPath) throws IOException
	{
		if(!CommonConst.GetWebServerFlag())
		{
			
		Resource[] resources=IoHelper.GetResource(sClassPath);
		
		if(resources.length>0)
    	{
    		(new WebConst()).SetTempletePath(resources[0].getFile().getParent());
    	}
		}
		else
		{
			(new WebConst()).SetTempletePath(CommonConst.Get(EComConst.root_realpath_zsrnpr)+ComFunction.ConfigValue("zweb.templetefilepath"));
		}
    	
    	
		
	}
	

}
