package com.srnpr.zweb.page;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.model.MWebPage;

public class PageProcess extends BaseClass implements IWebProcess {

	public MWebPage Process(String sUrl) {
		
		
		MWebPage mWebPage=new MWebPage();
		
		
	
		String[] sParams=sUrl.split("-");
		
		if(sParams[0].equals("post"))
		{
			
		}
		
		
		
		
		
		
		
		
		return mWebPage;
	}

}
