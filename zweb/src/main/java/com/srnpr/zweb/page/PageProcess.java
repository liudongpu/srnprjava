package com.srnpr.zweb.page;

import com.srnpr.zcom.base.BaseClass;
import com.srnpr.zweb.enumer.EWebRequest;
import com.srnpr.zweb.i.IWebProcess;
import com.srnpr.zweb.model.MWebPage;

public class PageProcess extends BaseClass implements IWebProcess {

	public MWebPage Process(PageRequest wRequest) {
		
		
		MWebPage mWebPage=new MWebPage();
		
		
	
		String sPageTarget=wRequest.Get(EWebRequest.Url_Target);
		
		if(sPageTarget.equals("post"))
		{
			
		}
		
		
		
		
		
		
		
		
		return mWebPage;
	}

}
